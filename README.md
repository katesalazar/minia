# minia

Minia programming language spec WIP.


## table of contents

* [rationale][13]

* [features][1]

* [resources][2]

  * [grammar][3]

    * [grammar (BNF)][12]

    * [grammar (Yacc format)][4]

  * [scanner][5]

    * [scanner (Lex format)][6]

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

* The natural or &#8469 (`N`), integer or &#8484; (`Z`) and rational or &#8474;
  (`Q`) sets. Basic arithmetic on them: addition, substraction, multiplication,
  division, exponentiation.

* "Non computational" _operations_, mainly for causing side effects.

* Command line applications.

  * Command line applications specialized side effects non computational
    operations.


## resources

### grammar

#### grammar (BNF)

```

&lt;greater&gt; ::= "greater"

&lt;is&gt; ::= "is"

&lt;less&gt; ::= "less"

&lt;than&gt; ::= "than"

&lt;expression&gt; ::= &lt;integer_literal&gt;
                     | &lt;rational_literal&gt;

&lt;condition&gt; ::= &lt;expression&gt; &lt;is&gt; &lt;less&gt; &lt;than&gt; &lt;expression&gt;
                    | &lt;expression&gt; &lt;is&gt; &lt;greater&gt; &lt;than&gt; &lt;expression&gt;

```

TODO


#### grammar (Yacc format)

[WIP][11]


### scanner

TODO


#### scanner (Lex format)

TODO


### implementations

The [amara project][10] (early WIP).


## acknowledgements

&lt;Insert acknowledgements here&gt;O


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
