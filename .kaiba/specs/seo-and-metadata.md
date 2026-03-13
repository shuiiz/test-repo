---
source_spec_id: 540e4b4f-746e-4ac7-89f6-474ecc97ca1c
title: SEO and Metadata
---

# SEO and Metadata

## Overview

Each page exports a `generateMetadata` function providing page-specific SEO metadata, with a shared root layout configuration.

## Root Layout Metadata

Defined in `app/layout.tsx`:

```typescript
<html lang="en">
```

- `themeColor: "#020617"` (matches `slate-950` background)

## Per-Page Metadata

Every page exports `generateMetadata` with:

| Field | Value |
|-------|-------|
| `title` | Page-specific, e.g. `"Pyrosaur Rex | GalactiDino"` |
| `description` | Page-specific description |
| `openGraph.title` | Same as title |
| `openGraph.description` | Same as description |
| `openGraph.image` | Themed image placeholder |

## Title Format Examples

| Page | Title |
|------|-------|
| Homepage | `"GalactiDino — Life Found Beyond the Stars"` |
| Planet catalog | `"Planets | GalactiDino"` |
| Planet detail | `"Ignarion Prime | GalactiDino"` |
| Species catalog | `"Species | GalactiDino"` |
| Species detail | `"Pyrosaur Rex | GalactiDino"` |
| About | `"About | GalactiDino"` |

## Dynamic Metadata

For dynamic routes (`/planets/[slug]`, `/species/[slug]`), `generateMetadata` receives the route params and looks up the entity to produce the correct title and description.

## Acceptance Criteria

| ID | Criterion |
|----|-----------|
| AC-10 | Each page has a unique `<title>` tag |
