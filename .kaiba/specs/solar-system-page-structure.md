# Solar System Page Structure Specification

## Overview

This specification defines the semantic HTML structure for `solar-system.html`, an educational page about our solar system.

## Document Structure

### REQ-STRUCT-001: Document Type and Language

- The document SHALL use `<!DOCTYPE html>` declaration
- The `<html>` element SHALL have `lang="en"` attribute

### REQ-STRUCT-002: Head Section

The `<head>` section SHALL contain:

- `<meta charset="UTF-8">`
- `<meta name="viewport" content="width=device-width, initial-scale=1.0">`
- `<title>` containing "Solar System"
- `<style>` block with all CSS (self-contained requirement)

## Page Layout

### REQ-STRUCT-003: Header Element

The `<header>` element SHALL contain:

- `<h1>` with text "Our Solar System"
- A tagline paragraph describing the page purpose

### REQ-STRUCT-004: Navigation Element

The `<nav>` element SHALL:

- Have an `aria-label` attribute for accessibility
- Contain anchor links to all 10 main sections:
  - `#overview`
  - `#sun`
  - `#mercury`
  - `#venus`
  - `#earth`
  - `#mars`
  - `#jupiter`
  - `#saturn`
  - `#uranus`
  - `#neptune`

### REQ-STRUCT-005: Main Content Element

The `<main>` element SHALL contain 10 `<section>` elements with the following IDs:

| Section ID | Topic |
|------------|-------|
| `overview` | Solar system introduction and formation |
| `sun` | The Sun - our star |
| `mercury` | Mercury - innermost planet |
| `venus` | Venus - second planet |
| `earth` | Earth - our home planet |
| `mars` | Mars - the red planet |
| `jupiter` | Jupiter - largest planet |
| `saturn` | Saturn - ringed planet |
| `uranus` | Uranus - ice giant |
| `neptune` | Neptune - outermost planet |

### REQ-STRUCT-006: Section Structure

Each section SHALL contain:

- An `<h2>` heading with the section title
- At least one `<h3>` subheading
- At least one `<p>` paragraph
- At least one `<img>` with a non-empty `alt` attribute

### REQ-STRUCT-007: Footer Element

The `<footer>` element SHALL contain:

- Attribution information for content sources
- Image credits referencing Wikimedia Commons

## Semantic Requirements

### REQ-STRUCT-008: Heading Hierarchy

- Only one `<h1>` in the document (in header)
- Each section starts with `<h2>`
- Subsections use `<h3>`
- No heading level skipping (h2 -> h4)

### REQ-STRUCT-009: Lists

- `<ul>` elements SHALL be used for unordered lists (e.g., notable facts)
- Lists SHALL be used within sections for fact listings

## Validation Criteria

- [ ] DOCTYPE html declaration present
- [ ] html lang="en" set
- [ ] All required meta tags present
- [ ] header element exists
- [ ] nav with aria-label exists
- [ ] main element exists
- [ ] All 10 sections with correct IDs exist
- [ ] Each section has h2, h3, img with alt, and p
- [ ] footer element exists
