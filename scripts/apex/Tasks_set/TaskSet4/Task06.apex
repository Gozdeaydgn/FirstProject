// 6. Write a program that can create X sample List name according to given number as below 
//   1. create a variable called leadCount as Integer and initialize to 4
//   2. create a empty List of String 
//   3. use for loop to add items to List to generate as below 
    
//     Sample Lead 1
//     Sample Lead 2
//     Sample Lead 3
//     Sample Lead 4

//   4. print out the List variable and the size 
//   5. try changing the leadCount and run your code again 



  Integer leadCount = 4 ; 
  
List<String> sampleLead = new List<String>();

for(Integer items=0; items<=4 ;items++) {
  System.debug('Sample Lead ' + items); 
  
}


System.debug('List Variable: ' + sampleLead); 
System.debug('Size of sampleLead: ' +sampleLead.size()); 