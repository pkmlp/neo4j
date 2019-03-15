# Neo4j

## Neo4j Intro

Eine kleine Einführung in Neo4j 


## Neo4j zur Darstellung der Abhängigkeiten der Service-Komponenten.

Um die Service-Komponenten und deren Abhängigkeiten aus Sherlock 
nach Neo4j zu kriegen, wie folgt vorgehen:


  Aus Sherlock exportieren. Sharepoint Menu: List --> Export Connection to Excel:
  - Component Catalog (Technical Instances)  
  - Component Dependencies
  
  
  Darauf öffnet sich jeweils ein EXCEL-Sheet. 
  - ComponentCatalog.xlsx
  - ComponentDependencies.xlsx

  Diese als CSV abspeichern.
  - ComponentCatalog.csv
  - ComponentDependencies.csv

  Header anpassen: Im Export hat es Header, die einen : im Namen haben. 
  Damit kommt Neo4j nicht zurecht. Darum die Header anpassen.
  Ein Vorlage ist in der Datei ComponentHeaders.xlsx enthalten.
  Diese stimmt mit dem Import-Command in Neo4j überein.

  Die CSV-Dateien ins das Import-Verzeichnis von Neo4j ablegen.

Beachte unbedingt auch die Datei Load_Components_Dependencies in diesem Git-Repo.
