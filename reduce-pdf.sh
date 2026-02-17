#!/bin/bash

INFILE=$1
OUTFILE=smaller-$1
echo "Reading $INFILE, writing $OUTFILE"
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -dColorImageResolution=150 -dGrayImageResolution=150 -dMonoGrayImageResolution=150 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$OUTFILE $INFILE 
