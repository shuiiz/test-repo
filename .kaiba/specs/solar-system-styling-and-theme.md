# Solar System Styling and Theme Specification

## Overview

This specification defines the visual styling requirements for solar-system.html, establishing a space-themed dark design that enhances readability and creates an immersive experience.

## Color Palette

### REQ-STYLE-001: CSS Custom Properties

The following CSS custom properties SHALL be defined in the `:root` selector:

```css
:root {
  --bg: #0a0e1a;           /* Deep space background */
  --surface: #111827;       /* Card/section backgrounds */
  --text: #d1d5db;          /* Primary body text */
  --heading: #e2c96b;       /* h1, h2 headings - golden */
  --subheading: #93c5fd;    /* h3 headings - light blue */
  --nav-link: #60a5fa;      /* Navigation links */
  --border: #1f2937;        /* Borders and dividers */
  --accent: #f59e0b;        /* Accent elements */
}
```

### REQ-STYLE-002: Color Application

- Body background SHALL use `--bg`
- Section backgrounds SHALL use `--surface`
- Body text SHALL use `--text`
- `<h1>` and `<h2>` headings SHALL use `--heading`
- `<h3>` headings SHALL use `--subheading`
- Navigation links SHALL use `--nav-link`
- Borders SHALL use `--border`

## Typography

### REQ-STYLE-010: Font Stack

- Primary font: Georgia, "Times New Roman", serif
- The page SHALL use serif fonts for body text

### REQ-STYLE-011: Font Sizing and Spacing

- Base font-size: 16px
- Line-height: 1.7 for body text
- Heading sizes SHALL follow a clear hierarchy:
  - h1: larger than h2
  - h2: larger than h3
  - h3: larger than body text

## Layout

### REQ-STYLE-020: Container and Max-Width

- Content SHALL have a `max-width` set for readability
- Recommended max-width: 900px to 1200px
- Content SHALL be centered on wider screens

### REQ-STYLE-021: Section Styling

- Sections SHALL have visual separation (padding, margins, or borders)
- Sections MAY have a subtle background difference from the page background

### REQ-STYLE-022: Navigation Styling

- Navigation links SHALL be clearly distinguishable
- Links SHALL have hover/focus states for accessibility
- Navigation MAY be styled as a horizontal or vertical list

## Component Styles

### REQ-STYLE-030: Image Styling

Images SHALL have the following styles:
- `max-width: 400px`
- `width: 100%`
- `height: auto`
- `display: block`
- `margin: 1rem 0`

Images MAY have:
- Border or border-radius
- Box-shadow for depth
- Caption styling

### REQ-STYLE-031: List Styling

- Unordered lists SHALL have clear bullet styling
- List items SHALL have appropriate spacing
- Lists MAY use custom bullet characters or icons

### REQ-STYLE-032: Definition Term Styling

- `<dfn>` elements SHALL be visually distinct from regular text
- MAY use italic, bold, or accent color

## Responsive Requirements

### REQ-STYLE-040: CSS Media Queries

- The design SHALL be responsive
- `max-width` CSS property SHALL be present
- Layout SHALL adapt to smaller screens

### REQ-STYLE-041: Mobile Considerations

- Content SHALL be readable at 320px viewport width
- Navigation SHALL remain accessible on mobile
- Images SHALL scale appropriately

## CSS Location

### REQ-STYLE-050: Embedded Styles

- All CSS SHALL be in a `<style>` block in the `<head>`
- No external CSS files (self-contained requirement)
- No inline styles on elements (maintain separation)

## Validation Criteria

- [ ] CSS color or background properties present in style
- [ ] max-width set for responsive layout
- [ ] Dark space theme colors implemented
- [ ] Typography follows specification
- [ ] Images styled per requirements
