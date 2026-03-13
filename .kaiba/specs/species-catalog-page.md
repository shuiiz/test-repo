---
source_spec_id: 540e4b4f-746e-4ac7-89f6-474ecc97ca1c
title: Species Catalog Page
---

# Species Catalog Page

## Route

`/species` — Static + `searchParams` (shareable URL filters)

## Purpose

Browse all dinosaur species across all planets, with shareable URL-based filters.

## Filtering Architecture

Filters are encoded in the URL: `/species?planet=aquathos&diet=Carnivore`

- The `page.tsx` is a **Server Component** that reads `searchParams` as props and filters the species list server-side before rendering
- `DinoFilter` is a `"use client"` component that calls `router.push()` with updated params when the user changes a filter
  - No full page reload on filter change
  - URL is updated, triggering a server re-render
- Filtered URLs are fully shareable and bookmarkable

## Content Blocks

1. **Page title** + description paragraph

2. **`DinoFilter` bar** (client component)
   - Planet dropdown (all planet slugs/names)
   - Diet type pills: All / Carnivore / Herbivore / Omnivore / Photosynthetic

3. **Filtered species grid**
   - `DinoCard` components matching active filters
   - Responsive grid: `grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4`

4. **Empty state message**
   - Displayed when no species match the active filters

## SEO

- Exports `generateMetadata` with unique `<title>` tag
- `openGraph`: title, description, themed image placeholder

## Acceptance Criteria

| ID | Criterion |
|----|-----------|
| AC-2 | Route renders without console errors |
| AC-3 | All 12+ species appear in unfiltered view |
| AC-6 | Page is responsive at 375px, 768px, and 1280px |
| AC-8 | Navigation links are correct |
| AC-9 | Diet badges and danger-level icons render for all diet types |
| AC-10 | Page has a unique `<title>` tag |
| AC-11 | `/species?planet=aquathos&diet=Carnivore` filters the list correctly |
| AC-12 | Changing a filter updates the URL without a full page reload |
