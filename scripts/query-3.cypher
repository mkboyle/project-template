// Retreives the party that Conor Mac Liam is a member of.

MATCH (candidate {candidate: 'Conor Mac Liam' })-[:MEMBER_OF]->(party) 
RETURN party;
