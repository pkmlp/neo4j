//
// Um ein Cypher-Script im Neo4j-Browser ausführen zu können:
//   - apoc installieren
//   - apoc.import.file.enabled=true in neo4j.conf resp. in Settings setzen
//
//
// Ausführen des Scriptes mit:
//   - call apoc.cypher.runFile("/home/pkmlp/gitRepos/neo4j/Neo4j_Intro_Script.cypher")
//   - call apoc.cypher.runFile("d:\\gitRepos\\neo4j\\Neo4j_Intro_Script.cypher")
//
//
// Sehr viele nützliche Procedures:
//   - https://neo4j-contrib.github.io/neo4j-apoc-procedures/
//


// Löschen der ganzen Datenbank
match (n) detach delete n;


//CREATE CONSTRAINT Name
CREATE CONSTRAINT ON (c:Complaint) ASSERT c.name IS UNIQUE;


// Erstellen aller Personen 
create (:Person {name:"Theo"});
create (:Person {name:"Lea"});
create (:Person {name:"Hugo"});
create (:Person {name:"Marlies"});
create (:Person {name:"Doris"});
create (:Person {name:"Peter"});
create (:Person {name:"Andreas"});


// Erstellen der Beziehungen der Personen zueinander
match (x:Person {name:"Theo"})
match (y:Person {name:"Lea"})
create (x) – [:steht_auf] -> (y);

match (x:Person {name:"Lea"})
match (y:Person {name:"Theo"})
create (x) – [:hasst] -> (y);

match (x:Person {name:"Lea"})
match (y:Person {name:"Hugo"})
create (x) – [:steht_auf] -> (y);

match (x:Person {name:"Hugo"})
match (y:Person {name:"Marlies"})
create (x) – [:liiert] -> (y);

match (x:Person {name:"Marlies"})
match (y:Person {name:"Hugo"})
create (x) – [:liiert] -> (y);

match (x:Person {name:"Hugo"})
match (y:Person {name:"Doris"})
create (x) – [:flirtet] -> (y);

match (x:Person {name:"Doris"})
match (y:Person {name:"Peter"})
create (x) – [:liiert] -> (y);

match (x:Person {name:"Peter"})
match (y:Person {name:"Doris"})
create (x) – [:liiert] -> (y);

match (x:Person {name:"Peter"})
match (y:Person {name:"Marlies"})
create (x) – [:flirtet] -> (y);

match (x:Person {name:"Marlies"})
match (y:Person {name:"Andreas"})
create (x) – [:flirtet] -> (y);

match (x:Person {name:"Andreas"})
match (y:Person {name:"Hugo"})
create (x) – [:bester_Freund] -> (y);
