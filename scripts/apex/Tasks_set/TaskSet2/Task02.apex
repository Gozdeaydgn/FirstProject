// 2. Write an Apex code that store 3 numbers in Integer variables
//    - Print out the smallest number

Integer num1 = 20, num2 = 5, num3 = 40;

if (num1 < num2 && num1 < num3) {
  System.debug('Num1 is the smallest number');
} else if (num2 < num1 && num2 < num3) {
  System.debug('Num2 is the smallest number');
} else if (num3 < num1 && num3 < num2) {
  System.debug('Num3 is the smallest number');
}
