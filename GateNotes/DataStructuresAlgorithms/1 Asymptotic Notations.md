
#### 1 What is asymptotic notation?
- Used to represent the increase in time of an algorithm with the increase in input size

##### 1.1 Theta notation, Big O and Big Omega notations
![](./Attachments/Images/asymptotic_notations.png)

##### 1.2 Small o, small omega notations
- Small o notation
	- Used when when the function is not asymptotically tight 
	- n belongs to o(n<sup>2</sup>)
	- n<sup>2</sup> does not belong to o(n<sup>2</sup>)
- Small omega notations
	- ω notation to denote a lower bound that is not asymptotically tight
	- n<sup>2</sup>/2 belongs to ω(n)
	- n<sup>2</sup>/2 does not belong to ω(n<sup>2</sup>)
