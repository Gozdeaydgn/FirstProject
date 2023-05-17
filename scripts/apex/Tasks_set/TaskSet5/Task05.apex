// 5. Write a program that create List of Id with 10 items and use 2 different loop (for loop and for each loop )to print out all value for practice
//     - continue from above
//      if the any ID match exactly '001xxxxxxxxxxxxxxx'
//      then break out of the loop

List<Id> contacts = new List<Id>{
  '003Dn000009y5tJIAQ',
  '003Dn000009y5tQIAQ',
  '003Dn000009y5tTIAQ',
  '003Dn000009y5tRIAQ',
  '003Dn000009y5tSIAQ',
  '003Dn000009y5tWIAQ',
  '003Dn000009y5tHIAQ',
  '003Dn000009y5tTIAQ',
  '003Dn000009y5tPIAQ',
  '003Dn000009y5tIIAQ'
};

for (Integer Index = 0; index < 9; index++) {
  System.debug(contacts.get(index));
}
for (Id eachContact : contacts) {
  System.debug('Contact Id numbers : ' + eachContact);
}

for (Id currentContact : contacts) {
  System.debug(currentContact);

  if (currentContact == '003Dn000009y5tTIAQ')
    break;
}
