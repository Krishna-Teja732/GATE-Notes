
#### What is a pointer? 
- Variable that points to the memory location where data resides
- Syntax to create a pointer
```
// declearing the variable 
int x = 4;

// LHS: declearing an pointer that points to an integer
// RHS: &x is the address of x, the address of x is stored in the prt pointer
int* ptr = &x;

// This is same as indirect addressing
// The value of y will be the value that the pointer points to
// In this case y = x, y = 4
int y = *ptr;

```