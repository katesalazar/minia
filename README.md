# minia

Minia programming language spec WIP.


## table of contents

* [rationale][13]

* [features][1]

* [reference][5]

  * [introduction][...]

  * [lexical conventions][...]

    * [tokens][...]

    * [comments][...]

    * [identifiers][...]

    * [literals][...]

      * [string literals][...]

      * [number literals][...]

        * [natural literals][...]

        * [rational literals][...]

  * [syntax notation][...]

  * [meaning of identifiers][...]

  * [syntax notation][...]

  * [syntax notation][...]

  * [syntax notation][...]

  * [grammar][3]

  * [...]

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

* Unopinionated string concatenation. Does not impose any string concatenation
  operator on you. Encourages to use text syntax for string concatenation and
  lets you define an alias using an infix operator of your choice.

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


## reference

TODO


### introduction

TODO


### lexical conventions

A program consists of exactly one document, consisting of source code. It is translated in several phases, which are described in FIXME BROKEN REFERENCE.

TODO

Non-ASCII characters are not allowed in programs written in minia language.

As a general rule, ASCII punctuation is not used in programs written in minia language, but they should be allowed and treated with no meaning, like (generally) whitespace.

TODO maybe, probably, forbid ASCII punctuation.


#### tokens

There are four classes of tokens: identifiers, keywords, literals, and other separators. Blanks, horizontal and vertical tabs, newlines, formfeeds and comments as described below (collectively, \`\`white space") are _mostly_ ignored except as they separate tokens. Some white space might be required to separate otherwise adjacent identifiers, keywords, and literals. Some white space might have some degree of meaning, like the white space (excluding comments) in between the words (keywords?) `comment` and `ends` which together are used to close comments.

TODO


#### comments

The word (keyword?) `comment` introduce a comment, which terminates with the words (keywords?) `comment ends` (with any amount of white space (excluding comments themselves) in between `comment` and `ends`. Comments do **not** nest, and they do not occur within a string literal.


#### identifiers

TODO


#### keywords

TODO


#### literals

TODO


##### string literals

TODO


##### number literals

TODO


###### natural literals

A natural literal is decimal (i.e. base-ten).

The primitive type, if any, of a natural literal; is implementation detail.

A natural literal consists of either:

1. A zero digit (0).

2. A non zero digit (1-9) followed by **any** number of digits without restriction.

FIXME talk about the `width` keyword.


###### integers

An integer is represented by an expression (MISSING LINK TO EXPRESSIONS) consisting of the occurrence of a natural literal following the unary operator minus. For reasons of strictly elegance, zero should be preferrably used without the minus sign, as minus zero has to be automatically transformed in the natural zero.


###### rational literals

A rational literal is decimal (i.e. base-ten).

The primitive type, if any, of a rational literal; is implementation detail.

A positive rational literal consists of an optional natural part, followed by a mandatory dot, followed by a decimal part which can not be a list of zeroed digits, followed by an optional part where an `e` or `E` is mandatory and then a minus sign is optional and lastly a natural exponent is required.

The natural part, if any, consists of a zero (0) or a non zero digit (1-9) followed by any number of digits without restriction. The decimal part consists of any number of zeroed digits, followed by a non zero digit (1-9), followed by any number of digits without restriction. The exponent consists of a zero (0) or a non zero digit (1-9) followed by any number of digits without restriction.

As written before, the natural part is optional. The decimal part is mandatory. The exponent is optional. The dot, separating the optional natural part (if any) from the mandatory decimal part, is mandatory. The `e` or `E`, separating the mandatory decimal part from the optional exponent part, is optional.

As a consequence, there is no way to represent zero as a rational literal. That's alright, because zero is natural, and in the Minia language every natural number can be promoted to a positive rational number. Any other natural numbers can be expressed as a rational literal, e.g. `420` can be also expressed as `.420e3` or `.420E3`. The program should detect this and automatically transform such rational number into a natural number. You can consider such transformation as a particular case of a general principle in computing by which functions should take as broadest input as possible and return as thinnest output as possible.

FIXME talk about the `width` and `precision` keywords.


###### negative rational numbers

A negative rational number can not be represented using a literal, but rather as an expression (MISSING LINK TO EXPRESSIONS) consisting of is represented by the occurrence of a \[positive\] rational literal following the unary operator minus.


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


### grammar (Yacc format)

[WIP][11]


### scanner (Lex format)

TODO


### implementations

The [amara project][10] (early WIP).


## acknowledgements

&lt;Insert acknowledgements here&gt;


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


[1]: http://github.com/katesalazar/minia/tree/master#features

[6]: http://github.com/katesalazar/minia/tree/master#scanner-lex-format

[8]: http://github.com/katesalazar/minia/tree/master#acknowledgments

[10]: http://github.com/katesalazar/amara

[11]: http://github.com/katesalazar/minia/tree/master/minia.grammar
