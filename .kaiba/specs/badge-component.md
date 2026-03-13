---
source_spec_id: 540e4b4f-746e-4ac7-89f6-474ecc97ca1c
title: Badge Component
---

# Badge Component

## Overview

A reusable coloured pill/badge component used for diet labels, climate tags, abilities, and other categorical labels throughout the site.

## File

`components/Badge.tsx`

## Type

Server Component

## Props

```typescript
interface BadgeProps {
  label: string;   // Text displayed in the badge
  color: string;   // Tailwind color name for background/text theming
}
```

## Usage Examples

- Diet badges on `DinoCard` (Carnivore → red, Herbivore → green, Omnivore → amber, Photosynthetic → purple)
- Climate pills on `PlanetCard`
- Abilities list on species detail page

## Design

- Rounded pill shape
- Background and text colour driven by `color` prop
- Consistent padding and typography with the dark space design system

## Acceptance Criteria

| ID | Criterion |
|----|-----------|
| AC-9 | Diet badges render for all diet types (Carnivore, Herbivore, Omnivore, Photosynthetic) |
