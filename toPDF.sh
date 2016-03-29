#! /bin/bash
<<<<<<< HEAD
pandoc "$1" -s --template reportToPdf.latex -o report.pdf --bibliography references.bib
evince report.pdf
=======
pandoc "$1".md -s --template reportToPdf.latex -o "$1".pdf --bibliography references.bib
evince "$1".pdf
>>>>>>> 3a01107b2505b5cad3b56d660634f18bbc7e25e3
