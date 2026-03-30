# Solar System Non-Functional Requirements Specification

## Overview

This specification defines the non-functional requirements (NFRs) for solar-system.html, covering validation, accessibility, performance, and compatibility.

## HTML Validation

### NFR-001: Valid HTML5

- The document SHALL be valid HTML5
- The document SHALL pass W3C HTML validation without errors
- The document SHALL use `<!DOCTYPE html>` declaration

### NFR-002: No JavaScript

- The document SHALL NOT contain any `<script>` tags
- The document SHALL NOT use inline JavaScript event handlers (onclick, etc.)
- The page SHALL be fully functional without JavaScript

## Self-Contained Requirements

### NFR-010: Single File

- The entire page SHALL be contained in a single HTML file
- All CSS SHALL be embedded in a `<style>` block
- No external CSS files

### NFR-011: File Protocol Compatibility

- The page SHALL work correctly when opened as a `file://` URL
- The page SHALL not require a web server to function
- Exception: External images require network access

### NFR-012: External Resources

- Only external resources allowed: images from Wikimedia Commons
- All image URLs SHALL use HTTPS protocol
- No external fonts, scripts, or stylesheets

## Accessibility Requirements

### NFR-020: Semantic HTML

- The document SHALL use semantic HTML5 elements:
  - `<header>` for page header
  - `<nav>` for navigation
  - `<main>` for main content
  - `<section>` for content sections
  - `<footer>` for page footer
  - `<article>` where appropriate

### NFR-021: Heading Hierarchy

- The document SHALL have exactly one `<h1>` element
- Heading levels SHALL not skip (no h2 -> h4)
- Each section SHALL start with an `<h2>`

### NFR-022: ARIA Labels

- Navigation SHALL have `aria-label` attribute
- Other ARIA attributes MAY be used where beneficial

### NFR-023: Image Accessibility

- All `<img>` elements SHALL have non-empty `alt` attributes
- Alt text SHALL be descriptive and meaningful
- Decorative images (if any) SHALL use `alt=""`

### NFR-024: Color Contrast

- Text and background color combinations SHALL meet WCAG AA contrast requirements
- Minimum contrast ratio: 4.5:1 for normal text
- Minimum contrast ratio: 3:1 for large text

### NFR-025: Focus Visibility

- Interactive elements SHALL have visible focus states
- Focus SHALL be keyboard accessible

## Responsive Design

### NFR-030: Viewport Meta Tag

- The document SHALL include viewport meta tag:
  ```html
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  ```

### NFR-031: Minimum Width Support

- The layout SHALL be usable at 320px viewport width
- Content SHALL not overflow horizontally
- Text SHALL remain readable at all sizes

### NFR-032: Flexible Images

- Images SHALL scale with container width
- Images SHALL use `max-width` and `width: 100%`
- Images SHALL maintain aspect ratio (`height: auto`)

### NFR-033: CSS Max-Width

- The page content SHALL have a `max-width` set
- This prevents excessively long line lengths on wide screens

## Content Requirements

### NFR-040: Word Count

- The page body text SHALL contain more than 2000 words
- This ensures substantive educational content

### NFR-041: List Usage

- The page SHALL use `<ul>` elements for unordered lists
- Lists SHALL be used for notable facts sections

### NFR-042: Definition Terms

- At least one `<dfn>` element SHALL be present
- `<dfn>` SHALL be used to define key terms

## Browser Compatibility

### NFR-050: Modern Browser Support

- The page SHALL work in current versions of:
  - Chrome/Chromium
  - Firefox
  - Safari
  - Edge

### NFR-051: Graceful Degradation

- The page SHALL be readable even if CSS fails to load
- Semantic HTML ensures content accessibility

## Validation Checklist

- [ ] No script tags present
- [ ] Valid HTML5 structure
- [ ] Works as file:// URL
- [ ] nav has aria-label
- [ ] All images have non-empty alt
- [ ] Viewport meta tag present
- [ ] max-width set in CSS
- [ ] Word count > 2000
- [ ] ul lists present
- [ ] dfn tag present
- [ ] Color/background in CSS
