ff-compute-accuracy(1)

# NAME

ff-compute-accuracy - evaluate a model with analogies

# SYNOPSIS

*ff-compute-accuracy* [_OPTIONS_] _EMBEDDINGS_ [_ANALOGIES_]

# DESCRIPTION

*ff-compute-accuracy* evaluates a model using analogies of the form '*a* is
to *a\** as *b* is to *b\**'. The model is given *a*, *a\**, and *b* and
should predict *b\**. This utility is similar to word2vec's
*compute-accuracy*, however the rules are more strict:

. The model's full vocabulary is used during evaluation.
. Evaluation instances are only skipped when *b\** is absent in the
  vocabulary. If the model is not able to handle one of the query
  tokens, this is counted as an erroneous prediction of the model.
. The case of a token's characters are reserved.

# FILE FORMAT

An analogies file consists of sections followed by analogies. For
example:

```
: capital-common-countries
Athens Greece Baghdad Iraq
Athens Greece Bangkok Thailand
: city-in-state
Chicago Illinois Houston Texas
Chicago Illinois Philadelphia Pennsylvania
```

Section identifiers are preceded by a colon and a space.

# OPTIONS

	*--threads* _N_
		The number of thread to use during evaluation for parallelization. By
		default, half of the logical CPUs are used.

# EXAMPLES

Evaluate *wikipedia.fifu* using *questions-words.txt*:

```
ff-compute-accuracy wikipedia.fifu questions-words.txt
```

## SEE ALSO

*ff-convert*(1), *ff-metadata*(1), *ff-quantize*(1), *ff-similar*(1)

## AUTHORS

Maintained by Daniel de Kok <me@danieldk.eu>. Up-to-date sources and the
issue tracker can be found at
https://github.com/finalfusion/finalfusion-rust
