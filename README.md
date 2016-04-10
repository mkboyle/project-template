# Irish Constituencies Neo4j Database
###### Megan Boyle, G00312390

## Introduction
I simply created a neo4j database that contains the forty Irish constituencies and the number of seats available in each. Along with every candidate that ran in the 2016 election and the party they belong to.

## Database
I first decided to do two csv files - Canditates(containing candidate name, gender and party) and constituencies(each constituency and the number of seats available). I then realised it would be a long process to create the relationship between each candidate and constituency they are in, so i decided to combine the two csv files together into one - neo4jproject.csv. 
To create the database:
* I used LOAD CSV to import my neo4jproject.csv file into the query.
* I used CREATE to create nodes with the candidates name and a label for there gender.
* I used MERGE to avoid creating duplicate party and constituency nodes.
*The party node is just the 17 party names.
*There are 40 constituency nodes wach with a label of the number of seats available.
*I then created a relationship between the candidate and the party they are a member of and between the candidtate and the constituency they run in. 


## Queries
Summarise your three queries here.
Then explain them one by one in the following sections.

#### Query one title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### Query two title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### Query three title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2. (http://neo4j.com/docs/stable/), Website used to help create queuries.
3. (http://irishpoliticalmaps.blogspot.ie/), Gathered some Constituency and candidate information here.
4. https://en.wikipedia.org/wiki/Parliamentary_constituencies_in_the_Republic_of_Ireland, , Gathered some Constituency and candidate information here.
