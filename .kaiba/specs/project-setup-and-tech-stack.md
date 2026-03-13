---
source_spec_id: 540e4b4f-746e-4ac7-89f6-474ecc97ca1c
title: Project Setup and Technology Stack
---

# Project Setup and Technology Stack

## Overview

A Next.js 14 (App Router) web application for the "Interplanetary Dinosaurs" fictional universe, using TypeScript and Tailwind CSS.

## Technology Stack

| Layer | Choice | Rationale |
|---|---|---|
| Framework | Next.js 14 (App Router) | File-based routing, RSC, built-in optimisation |
| Styling | Tailwind CSS v3 | Utility-first, rapid iteration |
| Language | TypeScript | Type safety for data models |
| Data | Static TypeScript data files | No backend required for MVP |
| Images | SVG placeholder components | No external images needed at MVP |
| Icons | `lucide-react` | Lightweight icon library |
| Deployment | Vercel (recommended) | Zero-config Next.js hosting |

## Project Structure

```
/
├── app/
│   ├── layout.tsx              # Root layout — nav, footer
│   ├── page.tsx                # Homepage
│   ├── planets/
│   │   ├── page.tsx            # Planet catalog
│   │   └── [slug]/
│   │       └── page.tsx        # Individual planet detail
│   ├── species/
│   │   ├── page.tsx            # Species catalog (URL searchParams filtering)
│   │   └── [slug]/
│   │       └── page.tsx        # Individual species detail
│   └── about/
│       └── page.tsx            # About / lore (fully written fictional content)
├── components/
│   ├── Navbar.tsx
│   ├── Footer.tsx
│   ├── PlanetCard.tsx
│   ├── DinoCard.tsx
│   ├── DinoFilter.tsx          # "use client" — reads/writes URL searchParams
│   ├── PlanetSilhouette.tsx    # Inline SVG placeholder for planets
│   ├── DinoSilhouette.tsx      # Inline SVG placeholder for dino species
│   └── Badge.tsx
├── data/
│   ├── planets.ts              # Planet seed data
│   └── species.ts              # Dinosaur species seed data
├── types/
│   └── index.ts                # Shared TypeScript interfaces
├── tailwind.config.ts
├── next.config.ts
└── tsconfig.json
```

## Configuration

- Root layout: `<html lang="en">`, `themeColor: "#020617"`
- Typography: Inter via `next/font/google`
- Default rendering: React Server Components
- Client components (require `"use client"`): `DinoFilter`, `Navbar` (mobile toggle)

## Non-Goals (MVP)

- No user authentication
- No database or API routes
- No CMS integration
- No search functionality
- No i18n / localisation
- No real photography or AI-generated artwork

## Acceptance Criteria

| ID | Criterion |
|----|-----------|
| AC-1 | `npm run dev` starts without TypeScript or runtime errors |
| AC-7 | `next build` completes with no TypeScript errors |
