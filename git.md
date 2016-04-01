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
## GIT  
GIT är ett verktyg för versionshantering utvecklat utav skaparen av Linux, Linus Thorvalds. Versionshantering används inom projekt för att kunna spåra ändringar som gjorts i filerna som hör till projektet, oftast används versionshantering för skriven kod i systemutveckling. Versionskontroll är viktigt att använda för att undvika att skriva över kod av misstag, men det är absolut nödvändigt i större projekt där man arbetar med flera personer. Med hjälp av en mjukvara för versionshantering sköts detta av ett program istället för att manuellt spara ner versioner. Med mjukvara för versionshantering kan man sedan gå tillbaka och se tidigare gjorda ändringar i koden.  

GIT är ett distribuerat system för versionshantering. Detta innebär att systemet inte bara hanterar versionshantering lokalt, eller på en server utan flera kopior av repositoryt existerar på flera olika maskiner. På detta sätt bygger man ett redundant system, om filerna försvinner från servern eller från en dator så finns det fortfarande kvar flera kopior hos medlemmarna samt på servern där projektet är uppladdat. Med hjälp av GIT kan också flera versioner av projektet finnas lagrat på olika klienter. Fördelen är också att medlemmarna som arbetar i projektet inte behöver vara uppkopplade mot servern när de jobbar mot projektet, det behöver bara göras när man hämtar data från repositoryt (pull) eller när man gjort ändringar som man vill ladda upp (push).  
GIT skiljer sig från andra mjukvaror för versionshanteringen, andra system tar hänsyn till vilka filer som har ändrats för att hantera olika versioner av dessa. GIT använder sig istället av sk snapshots av hela filstrukturen, en snapshot är en bild av hela filsystemet vid ett visst tillfälle. En snapshot skapas när man gör en commit, om ingenting har förändrats så skapas en länk till den tidigare versionen, om något har förändrats så sparas den förändrade information i den nya snapshot kopian.

## Github
Github är en hemsida med serverlagring av GIT projekt. Det är fullt möjligt att använda GIT utan att använda Github, men man behöver då själv sätta upp en server. Github bygger på open source principen med att det mesta laddas upp för allmän beskådan, vem som helst kan komma åt och se källkoden för de projekt som är uppladdade på Github. Andra git användare kan också vara med och vidareutveckla projektet, dessa blir då projektmedlemmar som kallas för collaborators. En användare kan begära en pull request på ett projekt, och ägaren av projektet kan sedan gå in och bevilja detta via hemsidan vilket tillåter användaren att ladda ner hela projektet till sin klient. När man använder sig av GIThub så får man en GUI för att överblicka projektet via hemsidan, härifrån kan man se samtliga versioner av projektets filer samt vilka ändringar som gjorts mellan olika versioner. Man kan se vem som gjort vilken ändring och vad som skiljer de olika versionerna åt.

## Jämförelse 
GIT är inte helt enkelt att sätta sig in i till en början, har man inte arbetat med versionshantering tidigare och inte är van vid linux kan det vara svårt, om man jämför med ett verktyg som Subversion är risken för fel större med GIT som är mer komplext med branching och offlinestödet kan göra att det blir problem om man hela tiden arbetar offline och sen tar hem ändringar som gjorts i repositoryt utan att göra det på rätt sätt. GIT är mer anpassat för Linux än för Windows, och är man bekant med att jobba i en terminal är det en fördel. Fördelen är att det är helt open source och lätt att få tag i som privatperson, Github är helt publikt och anpassat för open source utvecklaren.


# Referenser  
