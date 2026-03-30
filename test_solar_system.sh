#!/bin/bash
#
# TDD Test Script for solar-system.html
# Run this script to verify the HTML page meets all requirements.
# Expected: All tests FAIL initially (TDD RED phase)
#

FILE="solar-system.html"
PASS=0
FAIL=0

# Change to script directory
cd "$(dirname "$0")"

check() {
  if eval "$1"; then
    echo "PASS: $2"
    PASS=$((PASS + 1))
  else
    echo "FAIL: $2"
    FAIL=$((FAIL + 1))
  fi
}

# Verify file exists
if [ ! -f "$FILE" ]; then
  echo "ERROR: $FILE not found"
  echo ""
  echo "Results: 0 passed, 1 failed"
  exit 1
fi

echo "Testing $FILE..."
echo ""

# Store file content for repeated use
CONTENT=$(cat "$FILE")

# =============================================================================
# 1. DOCTYPE and HTML Structure
# =============================================================================

check 'grep -qi "<!DOCTYPE html>" "$FILE"' \
  "1. DOCTYPE html declaration present"

check 'grep -qi "<html[^>]*lang=\"en\"" "$FILE"' \
  "2. html lang=\"en\" attribute set"

check 'grep -qi "<meta[^>]*charset=\"UTF-8\"" "$FILE"' \
  "3. meta charset UTF-8 present"

check 'grep -qi "<meta[^>]*name=\"viewport\"" "$FILE"' \
  "4. viewport meta tag present"

check 'grep -qi "<title>[^<]*Solar System[^<]*</title>" "$FILE"' \
  "5. title contains \"Solar System\""

# =============================================================================
# 6-9. Semantic Structure Elements
# =============================================================================

check 'grep -qi "<header" "$FILE"' \
  "6. header element exists"

check 'grep -qi "<nav[^>]*aria-label" "$FILE"' \
  "7. nav with aria-label exists"

check 'grep -qi "<main" "$FILE"' \
  "8. main element exists"

check 'grep -qi "<footer" "$FILE"' \
  "9. footer element exists"

# =============================================================================
# 10. Required Sections (overview, sun, 8 planets)
# =============================================================================

SECTIONS="overview sun mercury venus earth mars jupiter saturn uranus neptune"

ALL_SECTIONS_EXIST=true
for section in $SECTIONS; do
  if ! grep -qi "id=\"$section\"" "$FILE"; then
    ALL_SECTIONS_EXIST=false
    echo "  - Missing section: #$section"
  fi
done

check '[ "$ALL_SECTIONS_EXIST" = true ]' \
  "10. All 10 sections exist (overview, sun, mercury, venus, earth, mars, jupiter, saturn, uranus, neptune)"

# =============================================================================
# 11. Each section has an h2 heading
# =============================================================================

H2_IN_SECTIONS=true
for section in $SECTIONS; do
  # Extract section content and check for h2
  SECTION_START=$(grep -n "id=\"$section\"" "$FILE" | head -1 | cut -d: -f1)
  if [ -n "$SECTION_START" ]; then
    # Get content from section start to next section or end
    SECTION_CONTENT=$(sed -n "${SECTION_START},\$p" "$FILE" | sed -n '1,/<\/section>/p')
    if ! echo "$SECTION_CONTENT" | grep -qi "<h2"; then
      H2_IN_SECTIONS=false
      echo "  - Section #$section missing h2"
    fi
  fi
done

check '[ "$H2_IN_SECTIONS" = true ]' \
  "11. Each section has an h2 heading"

# =============================================================================
# 12. Each section has at least one h3 subheading
# =============================================================================

H3_IN_SECTIONS=true
for section in $SECTIONS; do
  SECTION_START=$(grep -n "id=\"$section\"" "$FILE" | head -1 | cut -d: -f1)
  if [ -n "$SECTION_START" ]; then
    SECTION_CONTENT=$(sed -n "${SECTION_START},\$p" "$FILE" | sed -n '1,/<\/section>/p')
    if ! echo "$SECTION_CONTENT" | grep -qi "<h3"; then
      H3_IN_SECTIONS=false
      echo "  - Section #$section missing h3"
    fi
  fi
done

check '[ "$H3_IN_SECTIONS" = true ]' \
  "12. Each section has at least one h3 subheading"

# =============================================================================
# 13. Each section has at least one img with non-empty alt
# =============================================================================

IMG_IN_SECTIONS=true
for section in $SECTIONS; do
  SECTION_START=$(grep -n "id=\"$section\"" "$FILE" | head -1 | cut -d: -f1)
  if [ -n "$SECTION_START" ]; then
    SECTION_CONTENT=$(sed -n "${SECTION_START},\$p" "$FILE" | sed -n '1,/<\/section>/p')
    # Check for img with non-empty alt attribute
    if ! echo "$SECTION_CONTENT" | grep -qE '<img[^>]+alt="[^"]+"'; then
      IMG_IN_SECTIONS=false
      echo "  - Section #$section missing img with non-empty alt"
    fi
  fi
done

check '[ "$IMG_IN_SECTIONS" = true ]' \
  "13. Each section has at least one img with non-empty alt attribute"

# =============================================================================
# 14. Each section has at least one paragraph
# =============================================================================

P_IN_SECTIONS=true
for section in $SECTIONS; do
  SECTION_START=$(grep -n "id=\"$section\"" "$FILE" | head -1 | cut -d: -f1)
  if [ -n "$SECTION_START" ]; then
    SECTION_CONTENT=$(sed -n "${SECTION_START},\$p" "$FILE" | sed -n '1,/<\/section>/p')
    if ! echo "$SECTION_CONTENT" | grep -qi "<p"; then
      P_IN_SECTIONS=false
      echo "  - Section #$section missing paragraph"
    fi
  fi
done

check '[ "$P_IN_SECTIONS" = true ]' \
  "14. Each section has at least one paragraph"

# =============================================================================
# 15. Navigation contains anchor links to all 10 sections
# =============================================================================

# Extract nav content
NAV_CONTENT=$(sed -n '/<nav/,/<\/nav>/p' "$FILE")

NAV_LINKS_EXIST=true
for section in $SECTIONS; do
  if ! echo "$NAV_CONTENT" | grep -qi "href=\"#$section\""; then
    NAV_LINKS_EXIST=false
    echo "  - Nav missing link to #$section"
  fi
done

check '[ "$NAV_LINKS_EXIST" = true ]' \
  "15. Navigation contains anchor links to all 10 sections"

# =============================================================================
# 16. No script tags present
# =============================================================================

check '! grep -qi "<script" "$FILE"' \
  "16. No script tags present"

# =============================================================================
# 17. All img src use HTTPS URLs
# =============================================================================

# Find all img src values and check they start with https://
IMG_SRCS=$(grep -oE '<img[^>]+src="[^"]+"' "$FILE" | grep -oE 'src="[^"]+"' | sed 's/src="//;s/"$//')

ALL_HTTPS=true
if [ -n "$IMG_SRCS" ]; then
  for src in $IMG_SRCS; do
    if ! echo "$src" | grep -q "^https://"; then
      ALL_HTTPS=false
      echo "  - Non-HTTPS image: $src"
    fi
  done
else
  ALL_HTTPS=false
  echo "  - No images found"
fi

check '[ "$ALL_HTTPS" = true ]' \
  "17. All img src use HTTPS URLs"

# =============================================================================
# 18. At least one dfn tag present
# =============================================================================

check 'grep -qi "<dfn" "$FILE"' \
  "18. At least one dfn tag present"

# =============================================================================
# 19. Body text word count > 2000
# =============================================================================

# Strip HTML tags and count words
WORD_COUNT=$(sed 's/<[^>]*>//g' "$FILE" | tr -s '[:space:]' '\n' | grep -c '[a-zA-Z]')

check '[ "$WORD_COUNT" -gt 2000 ]' \
  "19. Body text word count > 2000 (found: $WORD_COUNT)"

# =============================================================================
# 20. ul lists exist
# =============================================================================

check 'grep -qi "<ul" "$FILE"' \
  "20. ul lists exist"

# =============================================================================
# 21. CSS color or background properties present in style
# =============================================================================

STYLE_CONTENT=$(sed -n '/<style/,/<\/style>/p' "$FILE")

HAS_COLOR_PROPS=false
if echo "$STYLE_CONTENT" | grep -qE '(color:|background:|background-color:)'; then
  HAS_COLOR_PROPS=true
fi

check '[ "$HAS_COLOR_PROPS" = true ]' \
  "21. CSS color or background properties present in style"

# =============================================================================
# 22. Responsive max-width set in CSS
# =============================================================================

HAS_MAX_WIDTH=false
if echo "$STYLE_CONTENT" | grep -qE 'max-width:'; then
  HAS_MAX_WIDTH=true
fi

check '[ "$HAS_MAX_WIDTH" = true ]' \
  "22. Responsive max-width set in CSS"

# =============================================================================
# Results Summary
# =============================================================================

echo ""
echo "========================================"
echo "Results: $PASS passed, $FAIL failed"
echo "========================================"

exit $FAIL
