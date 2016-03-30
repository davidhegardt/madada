#! /bin/bash
pandoc "$1".md -s --template reportToPdf.latex -o "$1".pdf --bibliography references.bib
evince "$1".pdf
