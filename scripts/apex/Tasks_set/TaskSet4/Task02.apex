
// // practice List using similar approach 
// 2. Write a program that store the even numbers from 1 to 20 into List of Integer

//   then write an apex code to get the sum of all items in the list. 


List<Integer> evenNumbers = new List<Integer>(); 
for(Integer count=1; count<=20 ; count+=2 ) {
  evenNumbers.add(count );
}
System.debug(evenNumbers); 

System.debug('Sum of all items in the list: ' + evenNumbers.size());