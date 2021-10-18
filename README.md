# GeoGram
An HPSG-based Formal Grammar of a Core Fragment of Georgian Implemented in TRALE.
This is a part of an [MSc thesis](docs/Thesis%20-%20HPSG%20for%20Georgian.pdf).
The presentation sldies of the thesis are [here](docs/GeoGram-presentation.pdf).


# GeoGram versions
GeoGram is presented as six nested grammars -- starting from the initial grammar `gr1` and ending with the final grammar `gr6`. The next version adds new components to the previous version.
Such organization is mainly motivated for teaching purposes. 

Short descriptions and relations between these versions of GeoGram:
* `gr1`: covers the verb complementation by nouns.
* `gr2`: `gr1` + verb complementation by nouns and pronouns, distinction between explicit and implicit arguments modeling the polypersonal agreement and pro-drop properties.
* `gr3`: `gr2` + adjunction of the noun by quantifiers and adjectives.
* `gr4`: `gr3` + adjunction of the noun by noun and pronoun possesives.
* `gr5`: `gr4` + noun complementation by possessive phrases
* `gr6`: `gr5` + nominalized quantifiers and adjectives, lexical rules for nominals - argument declension, adjunct declension, adjunct nominalization, pluralization and possessivization; and lexical rules for verbal conjugation - conjugation paradigm I, conjugation paradigm II and conjugation paradigm III.

**Use the last version if you are only interested in the most complete version of GeoGram.**


# Installation
Before you run the grammar, you need to isntall TRALE.
TRALE is a system for parsing, logic programming and constraint resolution  with typed feature structures in a manner roughly consistent with their use in Head-driven Phrase Structure Grammar (HPSG).

There are several ways to install TRALE depending depending on your machine and availability of a SICStus Prolog:
* [TRALE download page](http://milca.sfs.uni-tuebingen.de/A4/Course/trale/) - this is considered as an official page, where you can find the lattes version of TRALE (at the time of writing this, it needs a Sicstus Prolog installation). This is most comprehensive but arguably the least easy way of installing TRALE.
* [Grammix](https://hpsg.hu-berlin.de/Software/Grammix/) - a bootable CD Rom that contains TRALE along with some sample grammars (e.g., it can be run on windows OS via Virtual Machines). This installation can be suitable for teaching.
* [Standalone TRALE](https://hpsg.hu-berlin.de/Software/Trale/) - a version that does not need commercial Sicstus Prolog but does need Linux OS. This version of TRALE was used during the development of GeoGram.

More details about the installation (and running grammars) can be found in [this comprehensive instructions](http://utkl.ff.cuni.cz/%7Erosen/public/trale.pdf) by Alexandr Rosen (copy of it is also located in `docs/`). 


# Running the GeoGram grammar


# Referecne

If you use GeoGram, cite the following work:

```
@MastersThesis{Abzianidze:thesis:2011,
    author  = "Abzianidze, Lasha",
    title   = "An {HPSG}-based Formal Grammar of a Core Fragment of {Georgian} Implemented in {TRALE}",
    school  = "{C}harles {U}niversity in {P}rague",
    address = "the {C}zech {R}epublic",
    year    = 2011
    }
```
 
