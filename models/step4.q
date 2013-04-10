//This file was generated from (Academic) UPPAAL 4.1.13 (rev. 5160), November 2012

/*

*/
E[] P <= (beta / 4 - epsilon) * xi + (beta + delta + epsilon) / xi - 2 * beta - delta - 2 * epsilon

/*

*/
E[] (2 * (beta + epsilon) +max(delta, beta + epsilon)) * ((xi + 1) / xi) + delta < P

/*

*/
A[] not deadlock

/*

*/
A[] abs(local_time[0] - local_time[1] + (diff[0] - diff[1]) * P ) <= gamma
