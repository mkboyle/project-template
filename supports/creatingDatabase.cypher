// This is the code used to create my Neo4j database.
// LOAD CSV loads the data into my query
// CREATE (cand:Candidate { }) - creates candidate node with gender label
// I used MERGE to avoid creating duplicate constituency(with number of seats label) and party nodes.
// I then created a relationship between each candidate and the party they are a memeber of and between each candidate and the constituency they // // run in.


USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///C:/Users/Megan/Documents/neo4jproject.csv" AS csvLine
CREATE (cand:Candidate { candidate: csvLine.candidate, gender: csvLine.gender})
MERGE (cons:Constituency { constituency: csvLine.constituency, seats: toInt(csvLine.seats) })
MERGE (party:Party { name: csvLine.party })
CREATE (cand)-[:MEMBER_OF]->(party)
CREATE (cand)-[:RUNS_IN]->(cons)