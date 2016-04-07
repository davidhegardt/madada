---
#fontsize: 10pt
#papersize: a4paper
classoption:
  - titlepage
  - oneside
documentclass: scrreprt

toc: true
#lang: sv-SE

headerdef: true

title: Översikt över vanliga metoder & verktyg
subtitle: Uppgift 1 -- Metoder & verktyg för mjukvara(DT042G)
author:
  - David Hegardt
  - Martin Degerman
  - David Jonsson
include-before:

bibliography:
  - references.bib

nocite: |
    @git-info,
    @subversion-info,
    @trello-info,
    @trello-info2,
    @git-gtest,
    @gnu-gcov,
    @waterfall-method,
    @spiral-method,
    @scrum-method,
    @xp-method,
    @dev-methods,
    @doxygen-util,
    @markdown-util,
    @mkdocs-util,
...
# Inledning

En faktisk översikt över de verktyg som finns tillgängliga för den som planerar ett mjukvaruprojekt skulle naturligtvis kräva mer tid och utrymme än den ingående informationen skulle kunna överleva. Det följande är med andra ord ett mycket litet, och ganska sporadiskt urval. Vi har i de fall det varit rimligt försökt fokusera på hur tillmötesgående verktygen är för den som ska ta till sig dem utan någon tidigare erfarenhet av vare sig det aktuella verktyget eller andra liknande. Särskilt i fallet med Utvecklingsmetoder var det perspektivet irrelevant, varför vi där har jämfört hur de olika metoderna förhåller sig till dels krav/måluppfyllelse, dels testning av programvaran.

#Rapport

## Stödjande

### Versionshantering
Versionshantering används inom projekt för att kunna spåra historiska ändringar. Ofta används versionshantering i programmeringsprojekt, där versionskontroll kan användas för att undvika att skriva över kod av misstag, och då särskilt i större projekt där flera personer samarbetar. Med hjälp av mjukvara för versionshantering sköts detta av ett program istället för att manuellt spara ner versioner. Med mjukvara för versionshantering kan man sedan gå tillbaka och se tidigare gjorda ändringar i koden.

#### GIT
GIT är ett distribuerat system för versionshantering. Flera kopior av repositoryt existerar på flera olika maskiner. På detta sätt används redundans för att öka säkerheten. Om filerna försvinner från en plats är det likväl troligt att minst en fullständig kopia finns hos någon av dem som klonat projektet. Eftersom varje deltagare arbetar med en lokal kopia av repositoriet kan allt arbete utföras offline, och kontakt med servern behövs egentligen bara för att hämta och ladda upp ändringar.

GIT tar inte som andra system hänsyn till vilka filer som ändrats för att hantera olika versioner av dem. istället tas vid commit en sk snapshot av hela filstrukturen. Om ingenting har förändrats så skapas en länk till den tidigare versionen, om något har förändrats så sparas den förändrade information i denna nya snapshot.

GIT är inte helt enkelt att sätta sig in i till en början, har man inte arbetat med versionshantering tidigare och inte är van vid linux kan det vara svårt, om man jämför med ett verktyg som Subversion är risken för fel större med GIT som är mer komplext med branching och offlinestöd. GIT är mer anpassat för Linux än för Windows, och är man bekant med att jobba i en terminal är det en fördel. Det är helt open source och lätt att få tag i som privatperson. 

#### Subversion version control
Subversion är istället ett centraliserat versionshanteringssystem. I Subversion, till skillnad från GIT jobbar man alltid mot en server, och utvecklarna arbetar gemensamt i filerna som ligger där, hellre än att ge utvecklarna möjlighet att ladda ner projektet offline.

De uppenbara nackdelarna med att alltid behöva vara uppkopplad vägs mot fördelen i ett enkelt system, och det finns också framtagna tillägg för att tillåta offlinearbete.

### Trello  
Trello är ett open-source planeringsverktyg med flera användningsområden, men kan med fördel användas inom projektplanering. Trello baseras på kanban strukturen för layout av projekthantering. Verktyget är webb-baserat och projektet delas upp i olika anslagstavlor där man använder sig av checklistor, sk task lists med punkter över vad som ska göras i projektet. Efter att man gjort klart punkterna i en anslagstavla så bockas punkten av och flyttas till nästa steg. Under testen av verktyget så använde vi olika steg i processen och flyttade anslagstavlorna vidare varefter ett steg blir klart. T.ex kan man ha en planeringsfas, en fas för informationsinsamling, en skrivningsfas och en utvärderingsfas. Verktyget tillåter att flera användare samtidigt är inloggade och ser samma webbinterface, användarna har sjävla möjligheten att sätta upp nya mål och bocka av vad som är gjort. Det finns även möjlighet att tilldela en specifik del till en användare som då är helt ansvarig för den delen av projektet.  
Det är enkelt att ladda upp filer, Trello har integrationer med bla Google Drive, Dropbox och One Drive. Man kan sätta upp tider med deadlines och sedan få notifications för att kunna prioritera \vspace{5pt} vad som behöver göras härnäst.  
Trello har stöd för att användas via mobila plattformar, inloggningen har även integrationer till andra system som t.ex chattklienten slack. Webbinterfacet består av en övergripande bild över samtliga anslagstavlor och vilken fas dessa är i. I högerspalten kan man se senaste aktiviteten, vem som har gjort vad i projektet. Verktyget är väldigt simpelt och kan närmast beskrivas som en digital whiteboard, men det är väldigt kraftfullt och används utav flera stora företag.
Trello är väldigt simpelt att sätta sig in i, med integrationer mot t.ex gmail så behövs ingen separat registrering och man ser det mesta direkt när man kommer åt verktyget, väldigt lite konfigurering behöver göras och det finns en del avancerade funktioner men som nybörjare så är man igång med verktyget inom en timme.     


## Testverktyg

### Google test
Google test är ett ramverk för enhetstestning i C++. Enhetstestning är väldigt enkelt, och går i stort sett ut på att berätta vad en funktion förväntas göra, och se om den också gör det.

När man väl kommit igenom installationen och fått ordning på de grundläggande inställningarna, är det ungefär lika svårt att köra sina tester som att kompilera och köra sitt program. Resultatet av testerna är nästan omöjligt att missförstå, och visas direkt i terminalen.

Det enda som egentligen riskerar ställa till det för en nybörjare är just de första inställningarna. Den som vill använda ramverket hänvisas till dokumentationen för sitt buildsystem, och endast den som har tillräcklig tur kommer snubbla över en forumtråd eller annan obskyr informationskälla med information om  möjligheten att använda en linkerflagga för att bygga testprogrammet.

Hur själva testklasserna och testerna utformas är däremot mycket väldokumenterat. Med början i ett primerdokument om grunderna kan även en fullständig nybörjare snabbt komma in i arbetet, och också gå vidare till mer avancerade guider.

### Gcov
GNU/gcc tillhandahåller verktyget gcov för code coverage-testning. Även här är den grundläggande användningen väldigt enkel, och går i stort sett ut på att man anropar gcov med källkoden som ska testas, för att sedan köra resulterande fil. Resultatet presenteras i defaultläget som en sammanställning av antal kodrader, antal lästa, och lästa i procen, men flera flaggor kan användas för att få fram mer utförlig information. Code coverage blir som mest värdefullt när det kombineras med enhetstestning, och förmågan att se inte bara hur testad kod klarar sig, utan också hur stor del av koden som testerna faktiskt går igenom kan bidra till både säkrare och mer optimerad kod.

Nackdelen med både enhetstestning och code coverage är förstås att programmering är en för komplex syssla för att så enkla kvantitativa mätmetoder ska kunna ge entydiga resultat, mer än i de allra enklaste fallen. Ingenting säger att de tester som *inte* skrivits inte heller hade behövts. Och inga garantier finns för att de tester som skrivits är meningsfulla, hur stor del av koden som än omfattas. Risken finns till och med, och då särskilt för nya programmerare, att man lockas att jaga procent, istället för att ta fram så relevanta tester som möjligt.


## Utvecklingsmetoder

### Vattenfallsmetoden

Vattenfallsmetoden har sitt ursprung i tillverkningsindustrin, där man betar av en sekvens av utvecklingssteg. Stegen är för ett mjukvaruprojekt kravanalys, design, kodning, testning, och slutligen installation och underhåll av produkten. Utvecklingscykeln är linjär, och man ska i princip inte behöva återvända till ett tidigare steg.

**Krav:** Utvecklingen av programvara som sker sekventiellt kan tendera att glida från kundens krav vid större, längre projekt. Dessutom är möjlighet att ändra kraven mycket begränsade, och mycket kostsamma om så sker.

**Testning:** I vattenfallsmetoden testar och buggfixar du produkten utvecklingscycelns slutfas.

### Spiral-modell

Spiral-modellen är en metod som lånar element från olika utvecklingsmetoder som vattenfall, iterativa metoder och RAD (rapid application development). Focus ligger på att minimera risken för projekt, och är särskilt lämpad för större sådana. Varje iteration är uppdelad i 4 stadier, först identifiera mål, sedan analysera risker, sedan utveckling, och sist planering av nästa iteration.  

**Krav**: Utvecklingcyklen sker iterativt, vilken medför att man vid varje iteration klargör vilka mål man har och i slutet av varje iteration utvärderar resultatet. 

**Testning**: I spiral-modellen är testningen en riskbedömning, det gäller att hitta en balans då man inte vill släppa en bristfällig produkt, samtidigt som man inte kan ha allt för omfattande testning då detta gynnar konkurrenter.

### Scrum

Som ett svar på traditionella, sekventiella och "kantiga" utvecklingsmetoder kom de agila utvecklingsmetoderna. Scrum är den vanligaste av de agila metoderna. Istället för en linjär process har man korta iterationer (även kallade sprinter) där man implementerar en liten del av programmet. En iteration består av ett planerings-, utvecklings-, test- och ett utvärderingsstadie. 

**Krav**: Kraven kan relativt enkelt uppdateras vid en iteration om det faller inom ramen för ekonomi och tid, vilket bidrar till att man har stor chans att träffa de mål som kunden ställer. Detta ställer också högre krav på delaktighet i projektet från kundens sida.

**Testning**: Vid varje inkrementering testas nytillkomna funktioner i programmet. Eftersom fokus läggs på korta iterationer kan inte jättemycket tid läggas på testning vid varje iteration, vilket i värsta fall leder till bristfällig kod.

### Extrem programmering

Extrem programmering är ytterliggare en agil metod, som lägger fokus på korta utvecklingscykler och frekventa releaser. Under ett projekts cykel lägger man stor vikt vid att hela tiden granska befintlig kod, och främjar man utövandet av par-programmering, alltså att två personer arbetar vid samma arbetsstation. Det kan tilläggas att extrem programmering inte behöver motsäga andra agila metoder som t.ex. Scrum utan de har helt enkelt focus på olika delar i utvecklingsprocessen, och snarare kan kompletera varandra.

**Krav**: Vid extrem programmering sätter man inte upp fasta mål från början, utan låter dem successivt växa fram under projektets gång. Kraven formuleras också som acceptanstest, som körs och publiceras under projektets gång.

**Testning**: Som nämndes ovan, är acceptanstest en viktig del av extrem programmering, utöver detta uppmuntras inom extrem programmering omfattande testning, av små beståndsdelar av källkod, s.k. unit testing.

## Dokumentationsverktyg

### Doxygen

Doxygen är ett dokumentationsverktyg, som genererar dokumentation utifrån kommentarerna i en källkod. En av fördelarna med att ha ett sådant verktyg är att det blir relativt lätt att hålla dokumentationen i fas med källkoden. Jag testade hur det fungerar för C++, men det ska fungera också för en rad andra språk. Installationen är enkel, i alla fall för ubuntu där det går att hämta med apt-get, du får dock välja till ett paket om du vill ha ett grafiskt gränssnitt. 

För att generera dokumentation ur källkoden krävs en konfigurationsfil för det projekt som ska dokumenteras. För mindre projekt så behövs inte direkt göras några ändringar i config-filen, utan det ska i regel fungera direkt. För större projekt så måste du däremot ställa in vilka typer av filer du vill dokumentera, om det ska göras rekursivt i katalogsystem etc, och detta kan förstås ta ett tag att lära sig. Som tur var finns omfattande dokumentation för Doxygen. 

Det andra du behöver för dokumentationen är kommentarer i källkoden. Det går att göra utan, doxygen kommer ändå dokumentera vissa saker som den kan läsa ur koden(som klasser), men du kommer antagligen vilja lära dig Doxygens kommenterings-system för det är det som Doxygen bygger dokumentationen på.

### Markdown

Markdown är egentligen ett markup language för att konvertera text till HTML utan att skriva ren HTML kod. Markdown använder en förenklad syntax jämfört med HTML, detta konverteras sedan till HTML kod. Exempel på detta kan vara '#' som tolkas som stor rubrik och paragrafer skapas automatiskt med hjälp av tomma rader och dubbla mellanrum i texten. Vi har valt att använda markdown som dokumentationsverktyg då det löser ett stort problem som andra ordbehandlare
har problem med och det är kompabiliteten. Med hjälp av Markdown kan man säkerställa att alla använder samma plattform för dokumentation, oavsett om användaren använder Windows, MacOS eller Linux. Markdown är en teckentolkare som genererar HTML när det skapas och dette innebär också att den inte använder en specifik
textredigerare. För att konvertera Markdown text till ett färdigt dokument så använder vi verktyget LaTex. LaTex konverterar den skrivna texten och genererar själva layouten utifrån markdown, så att rubriksättning och textformateringen ser bra ut när den genereras. I uppgiften har vi använt LaTex för att ta fram en PDF rapport utifrån markdown.  

Ett verktyg för att dokumentera projekt med hjälp av Markdown är MKdocs, verktyget bygger på text skriven med hjälp av markdown samt script skriven i python, man använder sedan en konfigurationsfil i YAML för att skapa en automatiskt innehållsförteckning baserad på rubriker, och även stöd för referenser och länkning i dokumenten. MKdocs innehåller flera mallar för att få till en snygg dokumentation. I uppgiften har vi använt YAML konfiguration för innehållsförteckning och referenser.  
Markdown kräver en del tid för att lära sig, som nybörjare kan det vara relativt svårt att sätta sig in i, då man måste lära sig syntaxen för Markdown, en extern textredigerade behövs, LaTex installerat och en viss kunskap för att generera innehållsförteckning och korrekt formatering. Till en början var det detaljer i formateringen som ställde till problem, men det finns bra dokumentation att tillgå och färdiga verktyg som hjälper till med dessa steg. Det finns även online redigerare för Markdown där man kan se resultatet direkt i webbläsaren.

# Sammanfattning

Det är verkligen ingen självklarhet hur något av dessa områden egentligen ska avgränsas. Från ett sätt att märka ut att en textrad ska tolkas som rubrik, till stora färgglada grafiska webbapplikationer finns ganska enorma möjligheter att gå vilse... Det finns dock inte så stora möjligheter att dra några ytterligare slutsatser. För den som kommer ny till programmeringen är det tveksamt hur stor nytta alla dessa hjälpmedel kan göra. Och även i de fall det kan göra nytta kan man inte göra några generaliseringar om vilken nytta, eller vilka verktyg det i så fall kan gälla. De verktyg vi tagit upp här har i allmänhet varit ganska väl dokumenterade, och ska man säga något om det, mer än att det uppskattas, är det att de två saker som tycks vara drivande i utvecklingen av digital information är dels lärandeidealet hos rörelserna för fri och öppen programvara, och dels önskan om så många kunder som möjligt hos de vinstdrivna rörelserna. I vilken mån den ena eller andra inriktningen leder till bäst information räcker inte den här rapporten till för att ens spekulera om.

# Referenser
