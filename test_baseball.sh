#!/bin/bash
#
# TDD Test Script for baseball.html
# Run this script to verify the HTML page meets all requirements.
# Expected: All tests FAIL initially (TDD RED phase)
#

FILE="baseball.html"
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

# =============================================================================
# Group 1: DOCTYPE and HTML Structure
# =============================================================================

check 'grep -qi "<!DOCTYPE html>" "$FILE"' \
  "1. DOCTYPE html declaration present"

check 'grep -qi "<html[^>]*lang=\"en\"" "$FILE"' \
  "2. html lang=\"en\" attribute set"

check 'grep -qi "<meta[^>]*charset=\"UTF-8\"" "$FILE"' \
  "3. meta charset UTF-8 present"

check 'grep -qi "<meta[^>]*name=\"viewport\"" "$FILE"' \
  "4. viewport meta tag present"

check 'grep -qi "<title>[^<]*Baseball[^<]*</title>" "$FILE"' \
  "5. title contains \"Baseball\""

# =============================================================================
# Group 2: Semantic Structure
# =============================================================================

check 'grep -qi "<header" "$FILE"' \
  "6. header element exists"

check 'grep -qi "<nav" "$FILE"' \
  "7. nav element exists"

check 'grep -qi "<main" "$FILE"' \
  "8. main element exists"

check 'grep -qi "<footer" "$FILE"' \
  "9. footer element exists"

# =============================================================================
# Group 3: Navigation Links
# =============================================================================

NAV_CONTENT=$(sed -n '/<nav/,/<\/nav>/p' "$FILE")

check 'echo "$NAV_CONTENT" | grep -qi "href=\"#overview\""' \
  "10. nav link to #overview present"

check 'echo "$NAV_CONTENT" | grep -qi "href=\"#history\""' \
  "11. nav link to #history present"

check 'echo "$NAV_CONTENT" | grep -qi "href=\"#rules\""' \
  "12. nav link to #rules present"

check 'echo "$NAV_CONTENT" | grep -qi "href=\"#positions\""' \
  "13. nav link to #positions present"

check 'echo "$NAV_CONTENT" | grep -qi "href=\"#famous-players\""' \
  "14. nav link to #famous-players present"

check 'echo "$NAV_CONTENT" | grep -qi "href=\"#world-series\""' \
  "15. nav link to #world-series present"

# =============================================================================
# Group 4: Section IDs
# =============================================================================

check 'grep -qi "id=\"overview\"" "$FILE"' \
  "16. section id=\"overview\" present"

check 'grep -qi "id=\"history\"" "$FILE"' \
  "17. section id=\"history\" present"

check 'grep -qi "id=\"rules\"" "$FILE"' \
  "18. section id=\"rules\" present"

check 'grep -qi "id=\"positions\"" "$FILE"' \
  "19. section id=\"positions\" present"

check 'grep -qi "id=\"scoring\"" "$FILE"' \
  "20. section id=\"scoring\" present"

check 'grep -qi "id=\"famous-players\"" "$FILE"' \
  "21. section id=\"famous-players\" present"

check 'grep -qi "id=\"world-series\"" "$FILE"' \
  "22. section id=\"world-series\" present"

check 'grep -qi "id=\"stats-table\"" "$FILE"' \
  "23. section id=\"stats-table\" present"

# =============================================================================
# Group 5: Content Keywords
# =============================================================================

check 'grep -q "Babe Ruth" "$FILE"' \
  "24. \"Babe Ruth\" content present"

check 'grep -q "Jackie Robinson" "$FILE"' \
  "25. \"Jackie Robinson\" content present"

check 'grep -q "World Series" "$FILE"' \
  "26. \"World Series\" content present"

check 'grep -qiE "batting average|batting-average" "$FILE"' \
  "27. \"batting average\" content present"

check 'grep -qi "innings" "$FILE"' \
  "28. \"innings\" content present"

check 'grep -qiE "strikeout|strike" "$FILE"' \
  "29. \"strikeout\" or \"strike\" content present"

# =============================================================================
# Group 6: Table
# =============================================================================

check 'grep -qi "<table" "$FILE"' \
  "30. table element present"

check 'grep -qi "<th" "$FILE"' \
  "31. th header cells present"

check 'grep -qi "<td" "$FILE"' \
  "32. td data cells present"

# =============================================================================
# Group 7: Styling
# =============================================================================

STYLE_CONTENT=$(sed -n '/<style/,/<\/style>/p' "$FILE")

check 'echo "$STYLE_CONTENT" | grep -q "<style"' \
  "33. style block present"

check 'echo "$STYLE_CONTENT" | grep -qi ":root"' \
  "34. CSS variables :root block present"

check 'echo "$STYLE_CONTENT" | grep -q "\-\-bg"' \
  "35. --bg CSS variable defined"

check 'echo "$STYLE_CONTENT" | grep -q "\-\-heading"' \
  "36. --heading CSS variable defined"

# =============================================================================
# Results Summary
# =============================================================================

echo ""
echo "========================================"
echo "Results: $PASS passed, $FAIL failed"
echo "========================================"

exit $FAIL
