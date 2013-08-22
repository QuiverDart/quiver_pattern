quiver-dart
===========

A set of utility libraries for Dart

## async.dart

Utilities for working with Futures, Streams and async computations.

`FutureGroup` is collection of Futures that signals when all its child futures
have completed. Allows adding new Futures as long as it hasn't completed yet.
Useful when async tasks can spwn new async tasks and you need to wait for all of
them to complete.

`StreamRouter` splits a Stream into mulltiple streams based on a set of
predicates.

`CountdownTimer` is a simple countdown timer that fires events in configurable
increments.

`doWhileAsync` and `reduceAsync` perform async computations on the elements of
on Iterables, waiting for the computation to complete before processing the
next element.

## io.dart

`visitDirectory` is a recursive directory lister that conditionally recurses
into sub-directories based on the result of a handler function.

## iterables.dart

`count`, `cycle`, `enumerate`, `merge`, `range`, and  `zip` create, transform,
or combine Iterables in different ways, similar to Python's itertools.

`min`, `max`, and `extent` retreive the minimum and maximum elements from an
iterable.

## pattern.dart

pattern.dart container utilities for work with `Pattern`s and `RegExp`s.

`Glob` implements glob patterns that are commonly used with filesystem paths.

`matchesAny` combines multiple Patterns into one, and allows for exclusions.

`matchesFull` returns true if a Pattern matches an entire String.

`escapeRegex` escapes special regex characters in a String so that it can be
used as a literal match inside of a RegExp.

## time.dart

`Clock` provides points in time relative to the current point in time, for
example: now, 2 days ago, 4 weeks from now, etc. For tesability, use Clock
rather than other ways of accessing time, like `new DateTime()`, so that you
can use a fake time function in your tests to control time.