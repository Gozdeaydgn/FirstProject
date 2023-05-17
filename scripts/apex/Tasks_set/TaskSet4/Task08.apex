// 8. Create a program that take some item from One List to Another according to the condition
//   1. Create List of Integer with 9 elements|items
//   2. Create another empty List of Integer
//   3. Iterate over the first List using for each loop
//     - check if the number is between 5-10
//       - if so add this number to second list using secondList.add(itemHere) ;

//   4. Print out the first List
//   5. Print out the second List and it's size

List<Integer> elements = new List<Integer>{ 0, 8, 6, 95, 12, -56, 7, 51, 18 };

List<Integer> secondList = new List<Integer>();

for (Integer eachElement : elements) {
  if (eachElement >= 5 && eachElement <= 10) {
    secondList.add(eachElement);
  }
}

System.debug(elements);
System.debug(secondList + ' and Second List size is: ' +  secondList.size());  
