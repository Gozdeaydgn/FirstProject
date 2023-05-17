/*Declare three integers and initialize their values
checks if the first number is greater than the second number and the second number is greater
 than the third number. 
If this is true, the program should print "The first number is the largest." 
If not, the program should print "The first number is not the largest."
*/

// num1 > num2 and num2 > num3
//if it is true = "The first number is the largest."
//if it is false = The first number is not the largest

Integer num1 = 10, num2 = 20, num3 = 30;

if (num1 > num2 && num2 > num3) {
  System.debug('The first number is the largest.');
} else {
  System.debug('The first number is NOT the largest.');
}


