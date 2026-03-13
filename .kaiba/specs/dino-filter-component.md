---
source_spec_id: 540e4b4f-746e-4ac7-89f6-474ecc97ca1c
title: DinoFilter Component
---

# DinoFilter Component

## Overview

A client-side filter bar used on the `/species` catalog page to filter dinosaur species by planet and diet type via URL searchParams.

## File

`components/DinoFilter.tsx`

## Type

`"use client"` — requires browser APIs (`useSearchParams`, `useRouter`)

## Props

Accepts all available planets (for the dropdown) and current active filter values (derived from URL).

## UI Elements

1. **Planet dropdown** — lists all planet slugs/names; "All Planets" as default option
2. **Diet type pills** — clickable buttons for each diet:
   - All
   - Carnivore
   - Herbivore
   - Omnivore
   - Photosynthetic
   - Active pill has distinct visual treatment

## Behaviour

- Reads current filter state from `useSearchParams()`
- On planet change: calls `router.push('/species?' + newParams.toString())`
- On diet change: calls `router.push('/species?' + newParams.toString())`
- No full page reload on filter change
- URL is updated, triggering a server re-render of the parent Server Component
- Filtered URLs are fully shareable and bookmarkable

## URL Format

```
/species?planet=aquathos&diet=Carnivore
```

- `planet` param: planet slug (e.g. `aquathos`) or absent for "all"
- `diet` param: diet string (e.g. `Carnivore`) or absent for "all"

## Acceptance Criteria

| ID | Criterion |
|----|-----------|
| AC-11 | `/species?planet=aquathos&diet=Carnivore` filters the list correctly |
| AC-12 | Changing a filter on `/species` updates the URL without a full page reload |
