# minia

Minia programming language spec WIP.


## table of contents

* [rationale][13]

* [features][1]

* [reference][5]

  * [introduction][14]

  * [lexical conventions][15]

    * [tokens][16]

    * [comments][17]

    * [identifiers][18]

    * [literals][19]

      * [string literals][20]

      * [number literals][25]

        * [natural literals][26]

        * [rational literals][27]

  * [syntax notation][29]

  * [meaning of identifiers][30]

  * [conversions][...]

  * [expressions][...]

  * [operators][...]

  * [declarations][...]

  * [operations][...]

  * [scopes][...]

  * [grammar][3]

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
    [Ruby][24]...), brace
    based blocks (e.g. [C][22], C++, C#, [Rust][21]...),
    and...
    maybe also parens based scopes (e.g. lisps, Scheme...)
    all three groups as presentation accident,
    so if a problem, then an irrelevant one, so
    belonging in the editors level.

  * Unopinionated comment syntax. FIXME.

* Arithmetic expressions. Evaluation theoretically separable from execution.

* The natural or &#8469; (`N`), integer or &#8484; (`Z`) and rational or
  &#8474; (`Q`) sets. Basic arithmetic on them: addition, substraction,
  multiplication, division, exponentiation.

  * Absence of machine integers and floating point numbers. The interpreter is
    to choose the underlying technique for resolving rational numbers, using
    floating or fixed point arithmetic, at will.

    * The programmer might configure a scope in order to ban floating point
      arithmetic in it.

* "Non computational" _operations_, mainly for causing side effects.

* Command line applications.

  * Command line applications specialized side effects non computational
    operations.

[Back to top][28]


## reference

TODO


### introduction

TODO


### lexical conventions

A program consists of exactly one document, consisting of source code.
It is translated in several phases, which are described in FIXME BROKEN REFERENCE.

TODO

Non-ASCII characters are not allowed in programs written in minia language.

As a general rule, ASCII punctuation is not used in programs written in minia
language, but they should be allowed and treated with no meaning, like
(generally) whitespace.

TODO maybe, probably, forbid ASCII punctuation.

[Back to top][28]


#### tokens

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


#### comments

The word (keyword?) `comment` introduces a comment, which terminates with the
words (keywords?) `comment ends` (with any amount of white space (excluding
comments themselves, and extensions) in between `comment` and `ends`. Comments
do **not** nest, and they do not occur within a string literal.

[Back to top][28]


#### extensions

The word (keyword?) `extension` introduces the ocurrence of the use of a non
standard extension, which terminates with the words (keywords?)
`extension ends` (with any amount of white space (excluding extensions
themselves, and comments) in between `extension` and `ends`. Extensions do
**not** nest, and they do not occur within a string literal.

[Back to top][28]


##### comments inside extensions

By the very definition of extensions, any syntax is allowed for commenting code
inside extensions.

[Back to top][28]


#### identifiers

TODO


#### keywords

TODO


#### literals

Literals can be of two types:

* String literals (LINK MISSING).

* Number literals (LINK MISSING).

[Back to top][28]


##### string literals

TODO


##### number literals

Number literals are of two types:

* natural number literals (MISSING LINK TO)

* rational number literals )MISING LINK TO) which are only positive rational
  number literals

  * excluding zero, which can be represented as a natural number literal

  * including any other natural number that can, of course, also be represented
    using natural number literals.

You might be missing the integer set. But integers can be constructed as
expressions consisting of the unary operator minus followed by a natural number
literal. Like wise, a negative rational number can be constructed as an
expression consisting of the unary operator minus followed by a \[positive\]
rational number literal.

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

The primitive type, if any, of a natural literal; is implementation detail.

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

The primitive type, if any, of a rational literal; is implementation detail.

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
to remain the same (`1234.567`).

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

TODO


### conversions

TODO


### expressions

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

Copyright (c) 2018-2019 the minia language authors and contributors.

* Authored by:

  * 2019 &lt;your name here&gt;

    * &lt;your work here&gt;

  * 2018-2019 Mercedes Catherine Salazar (katesalazar):

    * (2018-2019) Lexicon, syntax, semantics.

* Contributions by:

  * 2019 &lt;your name here&gt;

    * &lt;your work here&gt;

  * 2018-2019 Mia (spreadLink):

    * (2018-2019) Syntax advisory.

    * (2018) Sequential operations conjunction: lexicon (`OPERATION and then
      OPERATION`).

Licensed to you under the terms of a free software license, details TBD.

[Back to top][28]


[1]: http://github.com/katesalazar/minia/tree/master#features

[2]: http://github.com/katesalazar/minia/tree/master#resources

[3]: http://github.com/katesalazar/minia/tree/master#grammar

[4]: http://github.com/katesalazar/minia/tree/master#grammar-Yacc-format

[5]: http://github.com/katesalazar/minia/tree/master#reference

[6]: http://github.com/katesalazar/minia/tree/master#scanner-lex-format

[7]: http://github.com/katesalazar/minia/tree/master#implementations

[8]: http://github.com/katesalazar/minia/tree/master#acknowledgments

[9]: http://github.com/katesalazar/minia/tree/master#copying

[10]: http://github.com/katesalazar/amara

[11]: http://github.com/katesalazar/minia/tree/master/minia.grammar

[12]: http://github.com/katesalazar/minia/tree/master#grammar-BNF

[13]: http://github.com/katesalazar/minia/tree/master#rationale

[14]: http://github.com/katesalazar/minia/tree/master#introduction

[15]: http://github.com/katesalazar/minia/tree/master#lexical-conventions

[16]: http://github.com/katesalazar/minia/tree/master#tokens

[17]: http://github.com/katesalazar/minia/tree/master#comments

[18]: http://github.com/katesalazar/minia/tree/master#identifiers

[19]: http://github.com/katesalazar/minia/tree/master#literals

[20]: http://github.com/katesalazar/minia/tree/master#string-literals

[21]: http://www.rust-lang.org/

[22]: http://www.open-std.org/jtc1/sc22/wg14/

[23]: http://www.python.org

[24]: http://www.ruby-lang.org/en/

[25]: http://github.com/katesalazar/minia/tree/master#number-literals

[26]: http://github.com/katesalazar/minia/tree/master#natural-literals

[27]: http://github.com/katesalazar/minia/tree/master#rational-literals

[28]: http://github.com/katesalazar/minia/tree/master#table-of-contents

[29]: http://github.com/katesalazar/minia/tree/master#syntax-notation

[30]: http://github.com/katesalazar/minia/tree/master#meaning-of-identifiers
