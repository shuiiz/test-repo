#!/bin/sh
# TDD validation tests for rocks.html

PASS=0
FAIL=0
FILE="rocks.html"

assert_contains() {
  desc="$1"
  pattern="$2"
  if grep -qE "$pattern" "$FILE" 2>/dev/null; then
    echo "  PASS: $desc"
    PASS=$((PASS+1))
  else
    echo "  FAIL: $desc"
    FAIL=$((FAIL+1))
  fi
}

assert_not_contains() {
  desc="$1"
  pattern="$2"
  if ! grep -qE "$pattern" "$FILE" 2>/dev/null; then
    echo "  PASS: $desc"
    PASS=$((PASS+1))
  else
    echo "  FAIL: $desc"
    FAIL=$((FAIL+1))
  fi
}

assert_file_exists() {
  desc="$1"
  f="$2"
  if [ -f "$f" ]; then
    echo "  PASS: $desc"
    PASS=$((PASS+1))
  else
    echo "  FAIL: $desc"
    FAIL=$((FAIL+1))
  fi
}

echo "=== TDD Tests for rocks.html ==="
echo ""

echo "--- D1: HTML Skeleton & Document Structure ---"
assert_file_exists "rocks.html file exists" "rocks.html"
assert_contains "DOCTYPE html declaration" "<!DOCTYPE html>"
assert_contains "html lang=en" 'lang="en"'
assert_contains "meta charset UTF-8" 'charset="UTF-8"'
assert_contains "viewport meta tag" 'name="viewport"'
assert_contains "title tag present" "<title>"
assert_contains "style block in head" "<style>"
assert_contains "header element" "<header"
assert_contains "nav element" "<nav"
assert_contains "main element" "<main"
assert_contains "footer element" "<footer"
assert_contains "section id igneous" 'id="igneous"'
assert_contains "section id sedimentary" 'id="sedimentary"'
assert_contains "section id metamorphic" 'id="metamorphic"'
assert_contains "h1 heading" "<h1"

echo ""
echo "--- D2: In-Page Navigation ---"
assert_contains "nav aria-label" 'aria-label='
assert_contains "nav link to igneous" 'href="#igneous"'
assert_contains "nav link to sedimentary" 'href="#sedimentary"'
assert_contains "nav link to metamorphic" 'href="#metamorphic"'
assert_contains "nav unordered list" '<ul'

echo ""
echo "--- D3: Rock Type Content ---"
assert_contains "Igneous Rocks heading" '[Ii]gneous [Rr]ocks'
assert_contains "Sedimentary Rocks heading" '[Ss]edimentary [Rr]ocks'
assert_contains "Metamorphic Rocks heading" '[Mm]etamorphic [Rr]ocks'
assert_contains "h3 subheadings present" '<h3'
assert_contains "granite example" '[Gg]ranite'
assert_contains "basalt example" '[Bb]asalt'
assert_contains "obsidian example" '[Oo]bsidian'
assert_contains "sandstone example" '[Ss]andstone'
assert_contains "limestone example" '[Ll]imestone'
assert_contains "shale example" '[Ss]hale'
assert_contains "marble example" '[Mm]arble'
assert_contains "slate example" '[Ss]late'
assert_contains "quartzite example" '[Qq]uartzite'

echo ""
echo "--- D4: Images ---"
assert_contains "img tag present" '<img'
assert_contains "img src from wikimedia" 'src="https://upload\.wikimedia\.org'
assert_contains "img has alt text" 'alt="[^"]'
assert_contains "img max-width 400px style" 'max-width: 400px'

echo ""
echo "--- D5: CSS Styling ---"
assert_contains "background color #faf7f2" '#faf7f2'
assert_contains "body text color #6b6b6b" '#6b6b6b'
assert_contains "section heading color #7a5c3e" '#7a5c3e'
assert_contains "nav link color #c2a97a" '#c2a97a'
assert_contains "divider color #d4cfc9" '#d4cfc9'
assert_contains "Georgia font family" 'Georgia'
assert_contains "font-size 16px" 'font-size: *16px'
assert_contains "line-height present" 'line-height'
assert_contains "max-width 860px for main" '860px'
assert_contains "flex-wrap for nav" 'flex-wrap'

echo ""
echo "--- NFRs ---"
assert_not_contains "no script tags" '<script'
assert_not_contains "no onclick handlers" 'onclick='
assert_not_contains "no external CSS link stylesheet" '<link rel="stylesheet"'
assert_contains "HTTPS wikimedia image URLs" 'https://upload\.wikimedia\.org'

echo ""
echo "=== Results: $PASS passed, $FAIL failed ==="
[ "$FAIL" -eq 0 ] && exit 0 || exit 1
