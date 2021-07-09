#! /bin/bash
# uses bibutils library 
# usage: ./convertbib.sh input.ris output.bib

ris2xml $1  > tempxml.xml
xml2bib tempxml.xml > $2
rm tempxml.xml
