/**
6. Write a program that create List of Integer with 10 items 
   get the count of the items more than 5 (try for loop and for each loop)
    and print out at the end 
*/
List<Integer> count = new List<Integer>{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };

//FOR EACH LOOP

for(Integer each : count){
   if(each>5){
      System.debug('each morethan5 value is : ' + each); 
   }
}

System.debug('------------------');
//AND FOR LOOP

for(Integer i=0; i<=10 ;i++) {
   if(i>5){
      System.debug('i MoreThan5 value is : ' + i); 
   }
   
}
