# Jegyzet

1. Kezdés egy kutatási témával és egy specifikus kutatási kérdéssel
2. adatgyűjtés: alajpa minden empirikus kutatásnak
3. adatok tisztítása és redszerezése 
4. feltáró elemzés segí az előkészítésben
5. analitikai elemzés 
6. eredmények közlése
7. válasz

-------------------------------------------------------------------------


## Miért van egy vállalatnak jobb menedzsmentje? => Jobb menedzsmentet eredményez-e az, hogy az alapító tulajdonosok maradnak?

- y- menedzsment minősége
- x- a tulajdon (bináris változó)
- z- (zavaró vált) intézméyrendszer

színskála: viridis

**Hasznos linkek:**
- worldmanagementsurvey.org
- claude.ai
- site.ai
- consensus.app


-------------------------------------------------------------------------------

## Workshop
*előadó [Csóka Imola](https://csokaimola.github.io) - [MicoData handbook](https://handbook.microdata.io)*

### Paper structure, code structure
[Data And Code Availability Standard](https://datacodestandard.org/)

#### 1. Consider the audience
- legyen olyan számítási empátiánk miszerint egy diák vagy bárki aki nem érti mélyen is tudja reprodukálni; pl: *kezdő diák, alap számítógéppel, semmi nincs telepítve*
- nem ugyanazzal az operációs rendszerrel
- reprodukálható legyen a kód futtatás és a modellezés is

#### 2. Data and code 
- hol találtuk a nyers adatot
    - Data Availability and provenance statement: Hol és hogyan érheti el bárki az adatot, akár konkrént személy megjelölésével, weboldallal
    
      Data source: 
        - https://ejd.econ.mathematik.uni-ulm.de/
        - https://i4replication.org/?trk=public_post-text 
- tegyük közzé a nyers adatot
    - Data Citation
    - metaadatokat is jelenítsük meg valamilyen formában: az adatok leírása, mit jelent az adott érték, mi a mértékegysége, stb
- az adat tisztító kódot is tegyük közzé
- a tisztított adatot is tegyük közzé
- a kész programot is
    - reprodukálhatóságért README fájl, DAS, data citation, software and hardware elvárások, version, packages, OS, memory, runtime, folder structure, *"how to run the code"*, plusz kivételek (pl nem elérhető adat, ilyesmi) 
        - a readmeben írjuk le hogyan épül fel, melyik fájl mit csinál, melyik hogyn telepíthető?
        - a readme végén idézzük az adatokat
        
          Templatek:
            - https://restud.dataeditor.group/
            - https://social-science-data-editors.github.io/template_README/
    - a saját adatgyűjtéshez a támogató anyagokat, pl kérdőív is tegyük be!
    - teszteljük le, hogy ez így működik-e? (adjuk át másnak, és bizonyosodjunk meg róla, hogy sikerül, és ugyanazok az eredmények)
    - adjunk hozzá licenszt!
    - tültsük fel online data tárhelyre, pl [zenodo](https://zenodo.org/)
- az output kerül publikálásra

### Git & GitHub
- [Technical Foundations of Informatics](https://info201.github.io/)
- [Version Control with Git](https://dlstrong.github.io/git-novice)

### Reproducible Research from Day One

2024.10.11. Csóka Imola
*Based on Miklós Koren, Lars Vilhuber, EEA-ESEM 2023-08-28*

**Data Sources**
- Distances: CEPII GeoDist https://www.cepii.fr/cepii/en/bdd_modele/bdd_modele_item.asp?id=6 
- Values: Tenders Electronic Daily (TED) csv https://data.europa.eu/data/datasets/ted-csv?locale=en, shorter dataset description: https://github.com/codedthinking/tender-home-bias
- data: https://github.com/codedthinking/tender-home-bias/releases/download/v2.0/ted-sample.csv 
- Country codes: https://datahub.io/core/country-codes

**Additional materials**
- [Template README](https://social-science-data-editors.github.io/template_README/) by the Social Science Data Editors 
- [Data and Code Availability Standard](https://datacodestandard.org/) by the Social Science Data Editors


