---
#fontsize: 10pt
#papersize: a4paper
classoption:
  - titlepage
  - oneside
documentclass: scrreprt

toc: true


headerdef: true

title: GIT Version Control
author:
  - David Hegardt
  - Author Two
  - Author Three
include-before:

bibliography:
  - references.bib
biblio-title: sources
biblio-style: apa
fullbib: true
nocite: |
    @wiki-info
...
# GIT versionshantering
## GIT och github  
GIT är ett verktyg för versionshantering utvecklat utav skaparen av Linux, Linus Thorvalds. Versionshantering används inom projekt för att kunna spåra ändringar som gjorts i filerna som hör till projektet, oftast används versionshantering för skriven kod i systemutveckling. Versionskontroll är viktigt att använda för att undvika att skriva över kod av misstag, men det är absolut nödvändigt i större projekt där man arbetar med flera personer. Med hjälp av en mjukvara för versionshantering sköts detta av ett program istället för att manuellt spara ner versioner. Med mjukvara för versionshantering kan man sedan gå tillbaka och se tidigare gjorda ändringar i koden.  

GIT är ett distribuerat system för versionshantering. Detta innebär att systemet inte bara hanterar versionshantering lokalt, eller på en server utan flera kopior av repositoryt existerar på flera olika maskiner. På detta sätt bygger man ett redundant system, om filerna försvinner från servern eller från en dator så finns det fortfarande kvar flera kopior hos medlemmarna samt på servern där projektet är uppladdat. Med hjälp av GIT kan också flera versioner av projektet finnas lagrat på olika klienter.



# Referenser  
