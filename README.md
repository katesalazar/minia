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

* Arithmetic expressions. Evaluation theoretically separable from execution.

* The natural or &#8469; (`N`), integer or &#8484; (`Z`) and rational or
  &#8474; (`Q`) sets. Basic arithmetic on them: addition, substraction,
  multiplication, division, exponentiation.

* "Non computational" _operations_, mainly for causing side effects.

* Command line applications.

  * Command line applications specialized side effects non computational
    operations.


## reference

TODO


### introduction

TODO


### lexical conventions

TODO


#### tokens

TODO


#### comments

TODO


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

TODO


###### rational literals

TODO


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

<ws> ::= " " | 

...

<document> ::= <named_functions_and_applications_and_execution_requests>

<named_functions_and_applications_and_execution_requests> ::= <named_function>    <named_functions_and_applications_and_execution_requests>
                                                            | <application_nt>    <named_functions_and_applications_and_execution_requests>
                                                            | <execution_request> <named_functions_and_applications_and_execution_requests>
                                                            |

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
