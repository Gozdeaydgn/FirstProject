// 4. Write a program that store List of Double with 10 items
//    break out of the loop if any number is between 50.5 and 99.99

List<Double> myDouble = new List<Double>{
  80.52,
  15.00,
  56.75,
  92.75,
  45.05,
  75.00,
  100.25,
  85.25,
  65.00,
  30.75
};

for (Double each : myDouble) {
  if (each > 50.5 && each < 99.99) {
    System.debug('each value is : ' + each);
    break;
  }
}
