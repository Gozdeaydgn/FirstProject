/*Declare 3 Integer variavles and initialize their values. 
Write a code to print out the largest number by comparing them with each other. 

Logic = 
if num1 is greater than num2 and num3 ==> num1 is largest
if num2 is greater than num1 and num3 ==> num2 is largest
if num3 is greater than num1 and num2 ==> num3 is largest

*/


Integer num1 = 10 , num2 = 20 , num3 = 30 ;


if(num1>num2 && num1>num3){
    System.debug('num1 is largest');

}else if(num2>num1 && num2>num3){
    System.debug('num2 is largest');

}else if (num3>num1 && num3>num2){
    System.debug('num3 is largest');
}




/** OR 
Integer num1 = 10 , num2 = 20 , num3 = 30 ;


if(num1>num2 && num1>num3){
    System.debug(num1 + 'is largest');
}else if(num2>num1 && num2>num3){
    System.debug(num2 + 'is largest');
}else{
    System.debug(num3 + 'is largest');
}

 */