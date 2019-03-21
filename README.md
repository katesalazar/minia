# minia

Minia programming language spec WIP.


## table of contents

* [rationale][13]

* [features][1]

* [resources][2]

  * [scanner][5]

    * [scanner (Lex format)][6]

  * [grammar][3]

    * [grammar (BNF)][12]

    * [grammar (Yacc format)][4]

  * [implementations][7]

* [acknowledgements][8]

* [copying][9]


## rationale

TODO


## features

* Named functions, named applications, and application execution requests.

* The strict ASCII set for both programming and texts.

* _High readability_ syntax.

* Arithmetic expressions. Evaluation theoretically separable from execution.

* The `N` (natural, &#8469;&#2115;&#8484;&#2124;&#8474;&#211A;), `Z` (integer) and `Q` (rational) sets. Basic arithmetic on
  them: addition, substraction, multiplication, division.

* Non computational operations.

* Command line applications.

  * Command line applications specialized side effects non computational
    operations.


## resources

### scanner

TODO


#### scanner (Lex format)

TODO


### grammar

&lt;greater&gt; ::= "greater"

&lt;is&gt; ::= "is"

&lt;less&gt; ::= "less"

&lt;than&gt; ::= "than"

&lt;expression&gt; ::= ..........
                     | &lt;rational_literal&gt;

&lt;condition&gt; ::= &lt;expression&gt; &lt;is&gt; &lt;less&gt; &lt;than&gt; &lt;expression&gt;
                    | &lt;expression&gt; &lt;is&gt; &lt;greater&gt; &lt;than&gt; &lt;expression&gt;

TODO


#### grammar (Yacc format)

[WIP][11]


### implementations

The [amara project][10]


## acknowledgements

TODO


## copying

This and the rest of documents in this repository are in the public domain.

In jurisdictions where this is not allowed, the following copyright terms
apply instead:

Copyright (c) 2018-2019 the *minia language* authors and contributors.

* Authored by:

  * 2019 &lt;your name here&gt;

    * &lt;your work here&gt;

  * 2018-2019 Mercedes Catherine Salazar (katesalazar):

    * (2018-2019) Lexicon, syntax, semantics.

* Contributions by:

  * 2019 &lt;your name here&gt;

    * &lt;your work here&gt;

  * 2018 Mia (spreadLink):

    * (2018) Sequential operations conjunction: lexicon (`OPERATION and then
      OPERATION`). Syntax consulting.

Licensed to you under the terms of a free software license, details TBD.


[1]: http://github.com/katesalazar/minia/tree/master#features

[5]: http://github.com/katesalazar/minia/tree/master#scanner

[8]: http://github.com/katesalazar/minia/tree/master#acknowledgments

[10]: http://github.com/katesalazar/amara

[11]: http://github.com/katesalazar/minia/tree/master/minia.grammar
