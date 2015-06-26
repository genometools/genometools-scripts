# genometools-scripts

This repository contains scripts written in the Lua language using the
GenomeTools [Lua bindings](http://genometools.org/docs.html). This API makes
it quite easy to process GFF3 annotations and connect them to the corresponding
sequences.

Please look at `gt-TEMPLATE` for an example of how to write these scripts.

![Build status](https://api.travis-ci.org/genometools/genometools-scripts.svg)

## List of currently available scripts (use `make readme` to update)

### gt-TEMPLATE
```
Do something with an input GFF.
Usage: gt ./gt-TEMPLATE <options> < infile.gff

Options:
  -h, --help    show this help message and exit
  -x            a boolean option
  -s SOMETHING  some string input
```
### gt-bequeath
```
Adds a given parent attribute to all child features.
Usage: gt ./gt-bequeath <options> < infile.gff

Options:
  -h, --help    show this help message and exit
  -a ATTRIBUTE  attribute to pass on to children (default: Name)
```
### gt-stripstop
```
Converts all genes with internal stop codons to pseudogenes.
Usage: gt ./gt-stripstop <sequence file> < infile.gff

Options:
  -h, --help  show this help message and exit
  -r          skip feature instead of making it a pseudogene
```
