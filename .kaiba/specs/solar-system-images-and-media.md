# Solar System Images and Media Specification

## Overview

This specification defines the image requirements for solar-system.html, ensuring all images are from reliable public domain sources and properly attributed.

## Image Source Requirements

### REQ-IMAGE-001: HTTPS Protocol

- All image `src` attributes SHALL use HTTPS URLs
- No HTTP URLs are permitted
- No relative paths or local images

### REQ-IMAGE-002: Wikimedia Commons Source

All images SHALL be sourced from Wikimedia Commons (commons.wikimedia.org):
- Images are in the public domain or have compatible licenses
- NASA images on Wikimedia are preferred (public domain)
- ESA images with appropriate licensing may be used

## Required Images by Section

### REQ-IMAGE-010: Overview Section Image

- Content: Solar system diagram or artistic representation
- Source: NASA/JPL imagery on Wikimedia Commons
- Alt text: Descriptive text about the solar system view

### REQ-IMAGE-020: Sun Section Image

- Content: Sun photograph from space-based observatory
- Preferred sources: SDO, SOHO mission imagery
- Alt text: Description of the Sun image and features visible

### REQ-IMAGE-030: Mercury Section Image

- Content: Mercury surface or full planet view
- Preferred source: MESSENGER spacecraft imagery
- Alt text: Description of Mercury's appearance

### REQ-IMAGE-040: Venus Section Image

- Content: Venus surface radar imagery or atmosphere view
- Preferred source: Magellan mission radar maps
- Alt text: Description of Venus features shown

### REQ-IMAGE-050: Earth Section Image

- Content: Full Earth view ("Blue Marble" style)
- Preferred source: Apollo mission or modern satellite imagery
- Alt text: Description of Earth from space

### REQ-IMAGE-060: Mars Section Image

- Content: Mars surface or full planet view
- Preferred sources: Viking, Mars Reconnaissance Orbiter (MRO)
- Alt text: Description of Mars features visible

### REQ-IMAGE-070: Jupiter Section Image

- Content: Jupiter with visible atmospheric features
- Preferred sources: Voyager, Cassini, or Juno mission
- Alt text: Description of Jupiter and Great Red Spot if visible

### REQ-IMAGE-080: Saturn Section Image

- Content: Saturn with prominent ring system
- Preferred source: Cassini mission imagery
- Alt text: Description of Saturn and ring system

### REQ-IMAGE-090: Uranus Section Image

- Content: Uranus planet view
- Preferred source: Voyager 2 mission
- Alt text: Description of Uranus appearance

### REQ-IMAGE-100: Neptune Section Image

- Content: Neptune planet view
- Preferred source: Voyager 2 mission
- Alt text: Description of Neptune and features

## Image Styling Requirements

### REQ-IMAGE-110: CSS Styling

All images SHALL have the following CSS applied:

```css
img {
  max-width: 400px;
  width: 100%;
  height: auto;
  display: block;
  margin: 1rem 0;
}
```

### REQ-IMAGE-111: Alt Text Requirements

- Every `<img>` SHALL have a non-empty `alt` attribute
- Alt text SHALL be descriptive (not just "image" or "photo")
- Alt text SHALL describe what is shown in the image

## Attribution Requirements

### REQ-IMAGE-120: Footer Attribution

- The footer SHALL include general attribution to NASA/JPL and Wikimedia Commons
- Individual image credits MAY be included near images or in footer

## Validation Criteria

- [ ] Each section has at least one image
- [ ] All images use HTTPS URLs
- [ ] All images have non-empty alt attributes
- [ ] Images are styled per CSS requirements
- [ ] Attribution present in footer
