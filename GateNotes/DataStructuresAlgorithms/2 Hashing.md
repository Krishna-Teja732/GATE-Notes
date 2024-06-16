
Load factor = n/m
where n is the number of keys and m is the number of slots in the hash table
A good hash function will have the load factor close to 1

Hash functions
- Mod function
- Multiplication hash function
	- h(K) = (A.K mod 2^w)rightshift(w-r)
	- where w is the word size of the computer
	- A is a constant
	- m = 2^r here m is the number of slots
- Linear probing
	- If there is collision, check next address
- Double probing
	- Two Hash functions
	- h(k, i) = (h1(k) + i\*h2(k))mod m 
	- where i is the ith probe3