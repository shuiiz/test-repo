---
source_spec_id: c9cebbfc-1aef-4aea-a0e3-d3b614d500f7
title: Responsiveness
---

# Responsiveness

The page MUST be mobile-friendly and readable at all viewport sizes from 320px (mobile) to 1440px (desktop).

## Requirements

- Include `<meta name="viewport" content="width=device-width, initial-scale=1.0">` in the `<head>`
- Use fluid widths (`max-width` combined with `width: 100%`) rather than fixed pixel widths for layout containers
- Images must not overflow their container on small screens (`max-width: 100%` on `img` elements)
- Navigation links must wrap gracefully on narrow screens — no horizontal overflow
