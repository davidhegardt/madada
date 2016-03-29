#! /bin/bash
pandoc "$1" -s --template reportToPdf.latex -o report.pdf --bibliography references.bib
evince report.pdf
