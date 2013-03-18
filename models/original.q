//This file was generated from (Academic) UPPAAL 4.1.13 (rev. 5160), November 2012

/*

*/
A[] (forall(i : id_t) forall(j : id_t) i != j imply (abs(phys_clock[i] + CORR[i] - (phys_clock[j] + CORR[j])) <= gamma))
