# minia

Minia programming language spec WIP.


## table of contents

* [rationale][13]

* [features][1]

* [reference][5]

  * [1 introduction][14]

  * [2 lexical conventions][15]

    * [2.1 tokens][16]

    * [2.2 extensions][...]

    * [2.3 comments][17]

    * [2.4 identifiers][18]

    * [2.5 keywords][...]

    * [2.6 literals][19]

      * [2.6.1 string literals][20]

      * [2.6.2 boolean literals][...]

      * [2.6.3 number literals][25]

        * [2.6.3.1 natural literals][26]

        * [2.6.3.2 rational literals][27]

  * [3 syntax notation][29]

  * [4 meaning of identifiers][30]

    * [4.1 basic types][...]

    * [4.2 derived types][...]

    * [4.3 type qualifiers][...]

  * [5 conversions][...]

  * [6 expressions][...]

    * [6.1 operators][...]

  * [7 declarations][...]

  * [8 operations][...]

  * [9 scope and linkage][...]

  * [10 grammar][3]

* [resources][2]

  * [grammar (BNF)][12]

  * [grammar (Yacc format)][4]

  * [scanner (Lex format)][6]

  * [implementations][7]

* [acknowledgements][8]

* [copying][9]


## rationale

TODO


## features

Some key features of the language:

* Named functions, named applications, and application execution requests.

* The strict ASCII set for both programming and texts.

* _High readability_ syntax.

* _Unopinionated_ syntax.

  * Unopinionated string concatenation. Does not impose any string
    concatenation
    operator on you. ~~Encourages to use text syntax for string concatenation
    and
    lets you define an alias using an infix operator of your choice.~~ Provides
    only a verbose `concatenation` operator and considers glyphs as
    presentation
    accident.

  * Unopinionated block syntax. The semicolon wars have no place here. This
    project considers both white space based blocks (e.g. [Python][23],
    [Ruby][24]...), brace based blocks (e.g. [C][22], C++, C#, [Rust][21]...),
    and... maybe also parens based scopes (e.g. lisps, Scheme...) all three
    groups as presentation accident, so if a problem, then an irrelevant one,
    from the computer science point of view, because it is simply notation, so,
    again, if a problem, then belonging in the editors level, because, again,
    it is presentation accident.

  * Unopinionated comment syntax. FIXME.

* Arithmetic expressions.

  * Value semantics. Evaluation theoretically separable from execution.

    * Automatic memoization has to be theoretically possible, and the guarantee
      of some degree of **optional** memoization should be available as might
      be very desirable for some user niches.

* The natural or &#8469; (`N`), integer or &#8484; (`Z`) and rational or
  &#8474; (`Q`) sets. Basic arithmetic on them: addition, substraction,
  multiplication, division, exponentiation.

  * ~~Absence~~ Abstraction of machine two's complement numbers architecture,
    machine floating point numbers, and whatever other Von Neumann
    architectures implications. The interpreter is to choose the underlying
    technique for resolving rational numbers, using floating or fixed point
    arithmetic, at will. Machine stuff, specially Von Neumann architectures
    implications, are implementation detail.

    * The programmer might configure a scope in order to ban floating point
      arithmetic in it. It is a right of the programmer, to choose some given
      arithmetic precision, without being constrained by the available tools.
      There must always be some kind of quantitative constraint that the tool
      imposes on the programmer, but qualitative constraints on essential
      concepts (such as e.g. arithmetic repeatability, and predictability, and
      the absence of a need to achieve a consensus) are wrong and have no place
      here.

* "Non computational" _operations_, mainly for causing side effects.

* Command line applications.

  * Command line applications specialized side effects non computational
    operations.

[Back to top][28]


## reference

This section is structured using as model the appendix of the same name in "The
C Programming Language" (K&R).


### 1 introduction

This manual describes the Minia language. The manual is the proposal of a
standard.


### 2 lexical conventions

A program consists of exactly one document, consisting of source code.
It is translated in several phases, which are described in FIXME BROKEN REFERENCE.

TODO

Non-ASCII characters are not allowed in programs written in minia language.

As a general rule, ASCII punctuation is not used in programs written in minia
language, but they should be allowed and treated with no meaning, like
(generally) whitespace.

TODO maybe, probably, forbid ASCII punctuation.

[Back to top][28]


#### 2.1 tokens

There are four classes of tokens: identifiers, keywords, literals, and other
separators. Blanks, horizontal and vertical tabs, newlines, formfeeds, comments
and extensions as described below (collectively, \`\`white space") are _mostly_
ignored except as they separate tokens. Some white space might be required to
separate otherwise adjacent identifiers, keywords, and literals. Some white
space might have some degree of meaning, like the white space (excluding
comments) in between the words (keywords?) `comment` and `ends` which together
are used to close comments.

TODO

[Back to top][28]


#### 2.2 extensions

Extensions are a provision enabling:

* Compiler or interpreter quirks.

* Nonstandard (beyond standard behavior).

  * Future evolution of the language.

[Back to top][28]


#### comments

The word (keyword?) `comment` (using any capitalization) introduces a comment,
which terminates with the words (keywords?) `comment ends` (using any
capitalization, with any amount of white space (excluding comments themselves,
and extensions) in between `comment` and `ends`. Comments do **not** nest, and
they do not occur within a string literal.

[Back to top][28]


#### extensions

The word (keyword?) `extension` (using any capitalization) introduces the
ocurrence of the use of a non standard extension, which terminates with the
words (keywords?) `extension ends` (using any capitalization, with any amount
of white space (excluding extensions themselves, and comments) in between
`extension` and `ends`. Extensions do not nest, and they do not occur within a
string literal.

[Back to top][28]


##### comments inside extensions

By the very definition of extensions, any syntax is allowed for commenting code
inside extensions.

[Back to top][28]


#### identifiers

TODO


#### keywords

The following words are reserved for the use as keywords, and may not be used
otherwise, unless as a part of an extension, a comment, or an identifier:

    an              and             application     args
    at              awesome         bound           carriage
    causes          chain           command         commands
    by              char            character       com
    comment         divided         division        does
    ease
    effects                  else                     end
    entry                    ext                      extension
    feed                     formula                  function
    greater                  id                       ident
    identifier               integer                  interface
    if                       is                       it
    less                     line                     minus
    natural                  new                      no
    nor                      nothing                  of
    operator                 point                    print
    rational                 read                     receives
    return                   returns                  run
    set                      side                     simple
    small                    so                       substraction
    times                    than                     that
    the                      then                     thread
    to                       type                     where
    with                     without

[Back to top][28]


#### literals

Literals can be of two types:

* String literals (LINK MISSING).

* Number literals (LINK MISSING).

[Back to top][28]


##### string literals

String literals are sequences of strict ASCII (code points less than 128)
characters, headed by `string` and trailed by `string ends`. They are trimmed.
Strings headed or trailed by white space can not be represented with string
literals, but only by _[objects][REFERENCE MISSING]_ typed `string`.

[Back to top][28]


##### 2.6.2 boolean literals

Boolean literals can only be either `false` or `true`.

[Back to top][28]


##### number literals

Number literals are of two types:

* natural number literals (MISSING LINK TO)

* rational number literals )MISING LINK TO) which are only positive rational
  number literals

  * excluding zero, which can be represented as a natural number literal

  * including any other natural number that can, of course, also be represented
    using natural number literals.

You might be missing the integer set. But integers can be constructed as
expressions consisting of the unary operator minus followed by a natural
number, be it literal or be it an expression. Like wise, a negative rational
number can be constructed as an expression consisting of the unary operator
minus followed by either a \[positive\] rational number expression or a
\[positive\] rational number literal.

In general there are no hard wired bounds in the language. But of course bounds
will be imposed on you by the resource availability of the machine running the
program.
There will also be hard wired bounds; even the language does not hard wire
bounds, it will demand you to impose hard wire bounds on the scopes of your
program where arithmetic operations are happening, you will use the `width` and
`precision` keywords for that.
The `width` keyword acts on natural, integer, and rational numbers. The
`precision` keyword acts on rational numbers.

[Back to top][28]


###### natural literals

A natural literal is decimal (i.e. base-ten).

The machine type, if any, of a natural literal; is implementation detail.

A natural literal consists of either:

1. A zero digit (0).

2. A non zero digit (1-9) followed by **any** number of digits without
   restriction.

A natural number is not necessarily semantically correct even lexically could
be correct. If a `420` is required at any time when the `arithmetic width` of
the scope is set to `1`, an error is required to happen.

FIXME talk about the `width` keyword.

[Back to top][28]


###### integers

An integer is represented by an expression (MISSING LINK TO EXPRESSIONS)
consisting of the occurrence of a natural literal following the unary operator
minus. For reasons of strictly elegance, zero should be preferrably used
without the minus sign, as minus zero has to be automatically transformed in
the natural zero.

[Back to top][28]


###### rational literals

A rational literal is decimal (i.e. base-ten).

The machine type, if any, of a rational literal; is implementation detail.

A positive rational literal consists of an optional natural part, followed by a
mandatory dot, followed by a decimal part which can not be a list of zeroed
digits, followed by an optional part where an `e` or `E` is mandatory and then
a minus sign is optional and lastly a natural exponent is required.

The natural part, if any, consists of a zero (0) or a non zero digit (1-9)
followed by any number of digits without restriction. The decimal part consists
of any number of zeroed digits, followed by a non zero digit (1-9), followed by
any number of digits without restriction. The exponent consists of a zero (0)
or a non zero digit (1-9) followed by any number of digits without restriction.

As written before, the natural part is optional. The decimal part is mandatory.
The exponent is optional. The dot, separating the optional natural part (if
any) from the mandatory decimal part, is mandatory. The `e` or `E`, separating
the mandatory decimal part from the optional exponent part, is optional.

As a consequence, there is no way to represent zero as a rational literal.
That's alright, because zero is natural, and in the Minia language every
natural number can be promoted to a positive rational number. Any other natural
numbers can be expressed as a rational literal, e.g. `420` can be also
expressed as `.420e3` or `.420E3`. The interpreter program,
or, in some conditions, maybe the compiler,
or, if applicable, the compiled program, should detect this and automatically
transform such rational number into a natural number, `420`. You can consider
such transformation as a particular case of a general principle in computing by
which functions should take as broadest input as possible and return as
thinnest output as possible. Like wise, such rational literals as `1234.567e0`
or `1234.567E0` should be transformed into an ocurrence of the natural number
one (`1`).

A rational number literal can represent a lot of different rational numbers. If
a `1234.567` is required at any time when the `arithmetic precision` of the
scope is set to `5`, it should automatically be transformed into the rational
number `1234.6`. If the `arithmetic precision` is set to `7` or larger, it has
to remain the same (`1234.567`). If a `1234.567` was required in a scope where
the `arithmetic precision` is set to `4` and the `arithmetic width` is set to
`4` or larger, it should automatically be transformed into the rational number
`1235.0`, and then into the natural number `1235`.

FIXME talk about the `width` and `precision` keywords.

[Back to top][28]


###### negative rational numbers

A negative rational number can not be represented using a literal, but rather
as an expression (MISSING LINK TO EXPRESSIONS) consisting of the occurrence of
a \[positive\] rational literal following the unary operator minus.

[Back to top][28]


### syntax notation

TODO


### meaning of identifiers

Identifiers, or names, refer to a variety of things: functions; and objects. An
object, sometimes called a variable, is a location in storage, and its
interpretation depends on one main attribute: its _type_. The type determines
the meaning of the values found in the identified object. A name also has a
scope, which is the region of the program in which it is known, and a linkage,
which determines whether the same name in another scope refers to the same
object or function. Scope and linkage are discussed in REFERENCE IS MISSING
HERE.

TODO


#### basic types

There are several fundamental types.

`nothing` is the definitive, unsalvageable, absence of known type, due to the
absence of a value itself.

`something` is quite a different thing, as it implies a negation of `nothing`.
It is not _the_ negation of `nothing`ness, but one of several
possibilities of negation of `nothing`ness, one of them could obviously be
_everything_. However, _everything_ has no meaning in Minia.

`unknown` is quite different from `nothing`, as it is the not definitive,
repairable, absence of known type, due to
partial or full ignorance of (theoretically) rectifiable detail or part or
circumstance, or due to missing _important_ information caused by any other reason.
`unknown` is a type of `something`ness, as the quality of `unknown` requires
the existence of `something` for that to be `unknown`.

Strings are sequences of characters. Characters are strict (as in 128 positions
only) ASCII. The type is mostly referred to as `string`.

A boolean value can only be either `true` or `false`.

Natural numbers belong to the `natural` set.

Integer numbers belong to the `integer` set.

Rational numbers belong to the `rational` set.

The `nothing` type specifies an empty set of values. It might be used as the
type where no value is applicable.

TODO


#### derived types

Beside the basic types, there is a conceptually infinite class of derived types
constructed from the fundamental types in the following ways: _lists_ of
objects of given types; _functions_ receiving objects of given types and
returning objects of given types; and _dictionaries_ containing a sequence of
objects of various types.

In general these methods of constructing objects can be applied recursively.


#### type qualifiers

An object's type may have additional qualifiers. Declaring an object `constant`
announces that its value will not be changed. This doesn't affect the range of
values or arithmetic properties of the object. Qualifiers are discussed in
REFERENCE MISSING.


### conversions

Some operators may, depending on their operands, cause conversion of the value
of an operand from one type to another. This section explains the result to be
expected from such conversions. REFERENCE MISSING summarizes the conversions
demanded by most ordinary operators; it will be supplemented as required by the
discussion of each operator.


#### integral conversions

Values from the `natural` type can be promoted to the `integer` type. The value
must remain unchanged.


#### rational conversions

Values from the `natural` and `integer` types can be promoted to the `rational`
type. The value must remain unchanged.


### expressions

The precedence of expression operators is the same as the order of the major
subsections of this section, highest precedence first.

TODO


#### operators

TODO


### declarations

TODO


### operations

TODO


### scopes

TODO


### grammar

TODO


## resources

TODO


### grammar (BNF)

`<TAB>` represents a horizontal tabulation, `<EOL>` represents the end of the
line (carriage return and / or line feed), `<NOTHING>` represents nothing, or
the ambsence of any character, or the empty string.

This is WIP.

```

...

<application> ::= "application"

...

<greater> ::= "greater"

...

<is> ::= "is"

...

<less> ::= "less"

...

<than> ::= "than"

...

<letter> ::= "a" | "b" | "c" | "d" | "e" | "f" | g | h | i | j | k | l | m |n | o | p | q | r | s|t|u|v|w|x|y|z

<digit> ::= ...

<underscore> ::= "_"

<identifier_inner> ::= <letter> <identifier_inner>
                     | <digit> <identifier_inner>
                     | <underscore> <identifier_inner>

<identifier> ::= <letter> <identifier_inner>

<ws> ::= " " | <TAB> | <EOL>

...

<document> ::= <named_functions_and_applications_and_execution_requests>

<named_functions_and_applications_and_execution_requests> ::= <named_function>    <named_functions_and_applications_and_execution_requests>
                                                            | <application_nt>    <named_functions_and_applications_and_execution_requests>
                                                            | <execution_request> <named_functions_and_applications_and_execution_requests>
                                                            | <NOTHING>

<application_nt> ::= <cli_application>

<cli_application> ::= <application> <identifier> <is> <a> <command> <line>
                      <interface> <application> <and> <the> <entry> <point>
                      <is> <function> <identifier> <end> <application>
                      <identifier>

<named_function> ::= <cli_named_function>

...

...

...

<expression> ::= <string_literal>
               | <type> <of> <expression>
               | <identifier>
               | <expression> <times> <expression>
               | <expression> <divided> <by> <expression>
               | <natural_literal>
               | <integer_literal>
               | <rational_literal>

<condition> ::= <expression> <is> <less> <than> <expression>
              | <expression> <is> <greater> <than> <expression>

```

TODO

[Back to top][28]


### grammar (Yacc format)

[WIP][11]


### scanner (Lex format)

TODO


### implementations

The [amara project][10] (early WIP).

[Back to top][28]


## acknowledgements

&lt;Insert acknowledgements here&gt;

[Back to top][28]


## copying

**This and the rest of documents in this repository are in the public domain**.

In jurisdictions where this is not allowed, the following copyright terms and
conditions apply instead:

> Copyright (c) 2018-2019 the minia language authors and contributors.
> 
> * Authored by:
> 
>   * 2019 &lt;your name here&gt;
> 
>     * &lt;your work here&gt;
> 
>   * 2018-2019 Mercedes Catherine Salazar (katesalazar):
> 
>     * (2018-2019) Lexicon, syntax, semantics.
> 
> * Contributions by:
> 
>   * 2019 &lt;your name here&gt;
> 
>     * &lt;your work here&gt;
> 
>   * 2018-2019 Mia (spreadLink):
> 
>     * (2018-2019) Syntax advisory.
> 
>     * (2018) Sequential operations conjunction: lexicon (`OPERATION and then
>       OPERATION`).
> 
> Licensed to you under the terms of a free software license (as in [compatible
> with either the GNU GPL or the GNU FDL][32] as per the [FSF][31], where each
> applies), **details TBD**.
> 
> \[Clarifying on the previous paragraph, \] if your circumstances or worries
> make so this degree and abstraction and vagueness of freedoms still doesn't
> fit you, then we require you to:
> 
> * Raise us your case.
> 
> * In the interim consider this under either the latest version of the
> [GNU GPL](http://www.gnu.org/licenses/gpl.html) or the latest version of the
> [GNU FDL](http://www.gnu.org/licenses/fdl.html), where each applies.

[Back to top][28]


[1]: #$%THIS%$##features

[2]: #$%THIS%$##resources

[3]: #$%THIS%$##grammar

[4]: #$%THIS%$##grammar-Yacc-format

[5]: #$%THIS%$##reference

[6]: #$%THIS%$##scanner-lex-format

[7]: #$%THIS%$##implementations

[8]: #$%THIS%$##acknowledgments

[9]: #$%THIS%$##copying

[10]: http://github.com/katesalazar/amara

[11]: #$%THIS%$#/minia.grammar

[12]: #$%THIS%$##grammar-BNF

[13]: #$%THIS%$##rationale

[14]: #$%THIS%$##introduction

[15]: #$%THIS%$##lexical-conventions

[16]: #$%THIS%$##tokens

[17]: #$%THIS%$##comments

[18]: #$%THIS%$##identifiers

[19]: #$%THIS%$##literals

[20]: #$%THIS%$##string-literals

[21]: http://www.rust-lang.org/

[22]: http://www.open-std.org/jtc1/sc22/wg14/

[23]: http://www.python.org

[24]: http://www.ruby-lang.org/en/

[25]: #$%THIS%$##number-literals

[26]: #$%THIS%$##natural-literals

[27]: #$%THIS%$##rational-literals

[28]: #$%THIS%$##table-of-contents

[29]: #$%THIS%$##syntax-notation

[30]: #$%THIS%$##meaning-of-identifiers

[31]: http://fsf.org

[32]: http://www.gnu.org/licenses/license-list.html
