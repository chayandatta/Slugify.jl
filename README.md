# Slugify.jl

<img src="https://raw.githubusercontent.com/chayandatta/slugify.jl/068a8b1b19d9b39cdde5f0ec5ce09c13658e0949/logo.svg" width="400">


Slugify.jl is a package for the Julia programming language that provides functionality for creating slugs from text. Slugs are typically used in web development to create human-readable URLs for pages, blog posts, and other content. Slugify.jl takes a string of text and converts it into a URL-friendly format, typically by replacing spaces and special characters with hyphens or underscores. This can be useful for improving the search engine optimization (SEO) of a website and making it easier for users to share links.

[![Build Status](https://github.com/chayandatta/slugify.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/chayandatta/slugify.jl/actions/workflows/CI.yml?query=branch%3Amain)

```julia
julia> using Slugify

julia> slugify("foo bar")
"foo-bar"

# if you prefer something other than '-' as separator
julia> slugify("foo buzz", "_")
"foo_buzz"

julia> 
```
