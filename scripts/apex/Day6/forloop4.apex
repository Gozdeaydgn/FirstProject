/**
Get the sum of number from 1-10
and store it into a variable called sum 
 */


 Integer sum = 0 ; 

for(Integer count=1 ; count<=10 ; count++){

    System.debug('Iteration number: ' + count); 
       sum += count ; //sum = sum + count ; 
    
    System.debug('Sum : ' + sum ); 
}
System.debug('--------') ; 


System.debug('Sum of 1 to 100 is ' + sum );



