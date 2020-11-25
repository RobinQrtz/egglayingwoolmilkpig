# egglayingwoolmilksow

This repository contains the egglayingwoolmilksow a dependency graph parser,
named after the fabled german farm animal.
The code was first implemented by Daniel Roxbo and modified by Robin Kurtz.

## Usage

To run the parser check some of the run-scripts located in the `scripts` folder.
You can either supply all parameters via the command line or use a config file
to avoid clutter.
In order to read syntactic trees, semantic graphs, as well as other
dependency-styled graphs, we use a CoNLL-U inspired format, presented in the
sample file located in the `data` folder.

Additionally to the features used in the publications below, the parser also
supports freezing and recycling of layers.

Good Luck :)

## Reference

If you want to use the parser please cite one or more of these papers:

- A Detailed Analysis of Semantic Dependency Parsing with Deep Neural Networks

    ```bibtex
    @mastersthesis{Roxbo1315439,
       author = {Roxbo, Daniel},
       institution = {Linköping University, Human-Centered systems},
       pages = {47},
       school = {Linköping University, Human-Centered systems},
       title = {A Detailed Analysis of Semantic Dependency Parsing with Deep Neural Networks},
       keywords = {Semantic Dependency Parsing, LSTM},
       abstract = {The use of Long Short Term Memory (LSTM) networks continues to yield better results in natural language processing tasks. One area which recently has seen significant improvements is semantic dependency parsing, where the current state-of-the-art model uses a multilayer LSTM combined with an attention-based scoring function to predict the dependencies. In this thesis the state of the art model is first replicated and then extended to include features based on syntactical trees, which was found to be useful in a similar model. In addition, the effect of part-of-speech tags is studied. The replicated model achieves a labeled F1 score of 93.6 on the in-domain data and 89.2 on the out-of-domain data on the DM dataset, which shows that the model is indeed replicable. Using multiple features extracted from syntactic gold standard trees of the DELPH-IN Derivation Tree (DT) type increased the labeled scores to 97.1 and 94.1 respectively, while the use of predicted trees of the Stanford Basic (SB) type did not improve the results at all. The usefulness of part-of-speech tags was found to be diminished in the presence of other features. },
       year = {2019}
    }
    ```

- Improving Semantic Dependency Parsing with Syntactic Features

    ```bibtex
    @inproceedings{kurtz-etal-2019-improving,
        title = "Improving Semantic Dependency Parsing with Syntactic Features",
        author = "Kurtz, Robin  and
          Roxbo, Daniel  and
          Kuhlmann, Marco",
        booktitle = "Proceedings of the First NLPL Workshop on Deep Learning for Natural Language Processing",
        month = sep,
        year = "2019",
        address = "Turku, Finland",
        publisher = {Link{\"o}ping University Electronic Press},
        url = "https://www.aclweb.org/anthology/W19-6202",
        pages = "12--21",
        abstract = "We extend a state-of-the-art deep neural architecture for semantic dependency parsing with features defined over syntactic dependency trees. Our empirical results show that only gold-standard syntactic information leads to consistent improvements in semantic parsing accuracy, and that the magnitude of these improvements varies with the specific combination of the syntactic and the semantic representation used. In contrast, automatically predicted syntax does not seem to help semantic parsing. Our error analysis suggests that there is a significant overlap between syntactic and semantic representations.",
    }
    ```

- End-to-End Negation Resolution as Graph Parsing

    ```bibtex
    @inproceedings{kurtz-etal-2020-end,
        title = "End-to-End Negation Resolution as Graph Parsing",
        author = "Kurtz, Robin  and
          Oepen, Stephan  and
          Kuhlmann, Marco",
        booktitle = "Proceedings of the 16th International Conference on Parsing Technologies and the IWPT 2020 Shared Task on Parsing into Enhanced Universal Dependencies",
        month = jul,
        year = "2020",
        address = "Online",
        publisher = "Association for Computational Linguistics",
        url = "https://www.aclweb.org/anthology/2020.iwpt-1.3",
        doi = "10.18653/v1/2020.iwpt-1.3",
        pages = "14--24",
        abstract = "We present a neural end-to-end architecture for negation resolution based on a formulation of the task as a graph parsing problem. Our approach allows for the straightforward inclusion of many types of graph-structured features without the need for representation-specific heuristics. In our experiments, we specifically gauge the usefulness of syntactic information for negation resolution. Despite the conceptual simplicity of our architecture, we achieve state-of-the-art results on the Conan Doyle benchmark dataset, including a new top result for our best model.",
    }
    ```
