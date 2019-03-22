ff-convert(1)

# NAME

ff-convert - convert between embedding formats

# SYNOPSIS

*ff-convert* [_OPTIONS_] _INPUT_ _OUTPUT_

# DESCRIPTION

ff-convert converts between word embedding formats. The embeddings in the
file _INPUT_ are read and the converted data is written to the file
_OUTPUT_.

When converting to the finalfusion format, it is also possible to add
metadata in TOML format. See the description of the *-n* option below.

# OPTIONS

	*-f* _FORMAT_, *--from* _FORMAT_
		The format to convert from. A description of formats is provided
		in the *FORMATS* section.
	*-m*, *--metadata*
		Add TOML metadata to the embeddings. This option only has an effect
		when converting to the finalfusion format.
	*-n*, *--no-normalization*
		Do not normalize embeddings to their l2 norms during conversion.
	*-t* _FORMAT_, *--to* _FORMAT_
		The format to convert to. A description of formats is provided
		in the _FORMATS_ section.

# FORMATS

The following formats are supported in conversions:

	*finalfusion*
		The finalfusion format.
	*text*
		Text format. In this format, each line contains a word, followed by
		the components of its embedding. The word is encoded in UTF-8, the
		embedding components in ASCII.
	*textdims*
		The word2vec text format. This format stores words and embeddings in
		the same manner as the *text* format, but includes the shape of the
		embedding matrix on the first line.
	*word2vec*
		The word2vec binary format.

## SEE ALSO

*ff-compute-accuracy*(1), *ff-metadata*(1), *ff-quantize*(1), *ff-similar*(1)

## AUTHORS

Maintained by Daniel de Kok <me@danieldk.eu>. Up-to-date sources and the
issue tracker can be found at
https://github.com/finalfusion/finalfusion-rust
