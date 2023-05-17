// 8. Write a program that create a list of strings and print the values that are not equal to "Salesforce", 
// using a for loop and the continue keyword.



List<String> wordsList = new List<String>{
  'Salesforce',
  'Java',
  'Apex',
  'Javascript',
  'CYDEO'
};
for (String word : wordsList) {
  if (word == 'Salesforce') {
    continue;
  }
  System.debug(word);
}