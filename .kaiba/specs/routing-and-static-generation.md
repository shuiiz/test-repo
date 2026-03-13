---
source_spec_id: 540e4b4f-746e-4ac7-89f6-474ecc97ca1c
title: Routing and Static Generation
---

# Routing and Static Generation

## Overview

All routes use Next.js 14 App Router. The majority of pages are statically generated at build time.

## Route Table

| Route | Generation Strategy | Notes |
|-------|-------------------|-------|
| `/` | Static | Homepage |
| `/planets` | Static | Planet catalog |
| `/planets/[slug]` | `generateStaticParams` | Planet detail — one page per planet slug |
| `/species` | Static + `searchParams` | Shareable URL filters, server-side filtering |
| `/species/[slug]` | `generateStaticParams` | Species detail — one page per species slug |
| `/about` | Static | Fully written lore page |

## Dynamic Route Generation

### `/planets/[slug]`

```typescript
export async function generateStaticParams() {
  return planets.map((planet) => ({ slug: planet.slug }));
}
```

### `/species/[slug]`

```typescript
export async function generateStaticParams() {
  return species.map((s) => ({ slug: s.slug }));
}
```

## Server vs Client Components

| Component | Type | Reason |
|-----------|------|--------|
| All pages | Server Component (default) | RSC for performance |
| `DinoFilter` | `"use client"` | Needs `useSearchParams`, `useRouter` |
| `Navbar` | `"use client"` | Needs `useState` for mobile toggle |
| All others | Server Component | No browser APIs required |

## `searchParams` Filtering (Species Catalog)

The `/species` page receives `searchParams` as a prop (Server Component). It filters the species array server-side before rendering `DinoCard` components. The `DinoFilter` client component handles URL updates without full page reloads.

## Acceptance Criteria

| ID | Criterion |
|----|-----------|
| AC-2 | All 6 routes render without console errors |
| AC-7 | `next build` completes with no TypeScript errors |
| AC-11 | `/species?planet=aquathos&diet=Carnivore` filters the list correctly |
| AC-12 | Changing a filter on `/species` updates the URL without a full page reload |
