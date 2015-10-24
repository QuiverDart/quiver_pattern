Quiver Pattern
======

Utility libraries for Dart related to string pattern matching.

[![Build Status](https://travis-ci.org/QuiverDart/quiver_pattern.svg?branch=master)](https://travis-ci.org/QuiverDart/quiver_pattern)
[![Coverage Status](https://img.shields.io/coveralls/QuiverDart/quiver_pattern.svg)](https://coveralls.io/r/QuiverDart/quiver_pattern)

[API Docs](http://www.dartdocs.org/documentation/quiver_pattern/latest) are available.

## [quiver.pattern][]

`matchesAny` combines multiple Patterns into one, and allows for exclusions.

`matchesFull` returns true if a Pattern matches an entire String.

## [quiver.pattern.regexp][]

`escapeRegex` escapes special regular expression characters in a `String` so
that it can be used as a literal match inside of a `RegExp`.

## [quiver.pattern.glob][]

`Glob` implements glob patterns that are commonly used with filesystem paths.

[quiver.pattern]: http://www.dartdocs.org/documentation/quiver/latest#quiver/quiver-pattern
