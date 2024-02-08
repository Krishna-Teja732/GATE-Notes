

#### 1 Sorting Algorithms
- **Selection sort**
	- Select smallest element from array and swap it with the first element 
	- Now select the smallest element and swap it with the second element
		- Ignore the first element as it is already the smallest element
- **Bubble sort**
	- Compare adjacent elements i and i + 1
		- If element i+1 < element i, then swap elements
	- After one iteration the largest element will be in the last index
		- Ignore the last index in next iteration
- **Insertion sort**
	- Compare the first element with next element
		- If next element is smaller insert next element at current element position
- **Merge sort**
	- Divide array until the array size if 2
		- Sort array of size 2 by swapping them if necessary 
	- Now merge the divided array
- **Quick sort**
	- Pivot Index = N/2, where N is the size of array 
	- After one iteration
		- every element below N/2 will be the smallest N/2 elements
	- 