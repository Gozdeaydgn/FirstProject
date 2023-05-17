// 4. Write a program that store 10 Long(data type) values into List of Long 
//    (it should be combination of positive and negative numbers) 

//    print out the sum of positive numbers 
//    print out the count of positive numbers 
//    print out the count of negative numbers 



List<Long> nums = new List<Long>{9887686838938L, -370876729860749872L, 9807408670737683L, -738798736046846L, 8730873087604L,
 862087620870674L, 873087603870674L, -729873986963L, 8370874070487L, 379879287073L};

 Long sum = 0 ;
 for(Long eachSumOfPos : nums){
   if(eachSumOfPos>=0){ 
      sum+=eachSumOfPos;
   }
 }
 System.debug('Sum of the positive numbers: ' + sum); 

 


Integer countPositive = 0;
Integer countNegative = 0;

for(Long each : nums){
   if(each>=0){
      countPositive++;
   }else{
      countNegative++;
   }
}
   System.debug(countPositive); 
   System.debug(countNegative); 

