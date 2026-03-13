---
source_spec_id: c9cebbfc-1aef-4aea-a0e3-d3b614d500f7
title: Page Structure
---

# Page Structure

The HTML page (`rocks.html`) MUST include the following high-level sections in order:

| Section | Description |
|---|---|
| Header | Page title (e.g. "All About Rocks") and a brief introductory paragraph |
| Rock Types Overview | An introduction to the three main rock categories |
| Igneous Rocks | Dedicated section with description, formation process, image, and examples |
| Sedimentary Rocks | Dedicated section with description, formation process, image, and examples |
| Metamorphic Rocks | Dedicated section with description, formation process, image, and examples |
| Footer | Simple attribution or copyright line |

The page is a single standalone static HTML file (`rocks.html`) placed in the root of the repository. It requires no build tools, frameworks, or external dependencies — pure HTML with embedded CSS only.

The file must be openable directly in a browser as a local file (no server required). All external resources (images) must load over HTTPS from Wikimedia Commons.
