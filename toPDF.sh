#! /bin/bash
pandoc "$1" -s --template reportToPdf.latex -o git.pdf --bibliography references.bib
evince git.pdf
