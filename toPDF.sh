#! /bin/bash
rm ./*.pdf
pandoc --filter pandoc-citeproc "$1".md -s --template reportToPdf.latex -o "$1".pdf
evince "$1".pdf
