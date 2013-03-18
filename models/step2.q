//This file was generated from (Academic) UPPAAL 4.1.13 (rev. 5160), November 2012

/*

*/
E[] P <= (beta / 4 - epsilon) * xi + (beta + delta + epsilon) / xi - 2 * beta - delta - 2 * epsilon

/*

*/
E[] (2 * (beta + epsilon) +max(delta, beta + epsilon)) * ((xi + 1) / xi) + delta < P

/*

*/
A[] O.finished || (forall(i : id_t) forall(j : id_t) i != j imply (abs(phys_clock[i] + CORR[i] - (phys_clock[j] + CORR[j])) <= gamma))
