//Retreives all the female candidates that ran in the election.

MATCH (candidate {gender: 'Female' }) 
RETURN candidate;
