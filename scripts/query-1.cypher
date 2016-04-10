//Retreives the candidates that ran in the Offaly constituency.

MATCH (constituency {constituency: 'Offaly' })<-[RUNS_IN]-(candidate) 
RETURN candidate;
