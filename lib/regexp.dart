// Copyright 2013 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/**
 * This library contains utilities for working with [RegExp]s.
 */
library quiver.pattern.regexp;

// From the PatternCharacter rule here:
// http://ecma-international.org/ecma-262/5.1/#sec-15.10
final specialRegExpChars = new RegExp(r'([\\\^\$\.\|\+\[\]\(\)\{\}])');

/**
 * Escapes special regular exppression characters in [str] so that it can be
 * used as a literal match inside of a [RegExp].
 *
 * The special characters are: \ ^ $ . | + [ ] ( ) { }
 * as defined here: http://ecma-international.org/ecma-262/5.1/#sec-15.10
 */
String escapeRegExp(String str) => str.splitMapJoin(specialRegExpChars,
    onMatch: (Match m) => '\\${m.group(0)}', onNonMatch: (s) => s);
