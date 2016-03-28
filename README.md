# Verktyg och metoder...

## Syfte
Syftet är att lära sig använda verktyg som används i och omkring
systemutveckling. Kursen heter Metoder och Verktyg och projektet består av
3 medlemmar.

## Punkter för projektet
* Metoder för utveckling av programvara  
Undersöka och presentera fyra olika utvecklingsmetoder. Minst två av dessa ska vara från kategorin Agila metoder.

* Stödjande Verktyg  
Undersöka och presentera tre vanliga verktyg som underlättar utvecklingsprocessen och samarbetet i projektet. Av dessa ska två vara verktyg från kategorin versionshantering.

* Dokumentationsverktyg  
Undersöka och presentera två olika dokumentationsverktyg.

## Dokumentet
För att bygga dokumentet anropas toPDF.sh med namnet på en markdown fil. ett anrop till 
``` ./toPDF.sh test ```
kommer använda test.md för att bygga test.pdf.

## Källor
Källor läggs till i filen references.bib. Webbkällor anges på formen:

``` 
    @online{wiki-info,
    title = "Pro GIT - 2nd Edition",
    author =    "Scott Chacon and Ben Straub",
    version =   "2.0",
    date = "2016-03-03",
    url = "https://git-scm.com/book/en/v2",
    urldate = "2016-03-28"
    }
```

Då vi förmodligen inte har tänkt faktiskt hänvisa till någonting i texten måste vi lägga in dummycitat i YAML-sektionen i headern:

``` 
    nocite:
        @wiki-info,
        @other-source
```
