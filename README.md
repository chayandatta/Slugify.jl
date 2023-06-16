# Slugify.jl

<img src="https://raw.githubusercontent.com/chayandatta/slugify.jl/068a8b1b19d9b39cdde5f0ec5ce09c13658e0949/logo.svg" width="400">

Slugify.jl is a package for the Julia programming language that provides functionality for creating slugs from text. Slugs are typically used in web development to create human-readable URLs for pages, blog posts, and other content. Slugify.jl takes a string of text and converts it into a URL-friendly format, typically by replacing spaces and special characters with hyphens or underscores. This can be useful for improving the search engine optimization (SEO) of a website and making it easier for users to share links.

<!-- [![Build Status](https://github.com/chayandatta/slugify.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/chayandatta/slugify.jl/actions/workflows/CI.yml?query=branch%3Amain) -->

### Installation:
one-liner
```julia
Pkg.add("Slugify")
```
---
more info
```julia
julia> using Pkg

julia> Pkg.add("Slugify")
    Updating registry at `~/.julia/registries/General.toml`
   Resolving package versions...
   Installed Slugify ─ v1.0.0
    Updating `~/.julia/environments/v1.8/Project.toml`
  [6a57dadc] ~ Slugify v1.0.0 `~/Documents/slugify.jl` ⇒ v1.0.0
    Updating `~/.julia/environments/v1.8/Manifest.toml`
  [6a57dadc] ~ Slugify v1.0.0 `~/Documents/slugify.jl` ⇒ v1.0.0
Precompiling project...
  1 dependency successfully precompiled in 1 seconds. 139 already precompiled.

julia>
```
---
### How to use Slugify

```julia
julia> using Slugify

julia> slugify("foo bar")
"foo-bar"

# if you prefer something other than '-' as separator
julia> slugify("foo buzz", "_")
"foo_buzz"

# unicode support
julia> slugify("we ♥ Julia")
"we-love-Julia"

julia>
```
