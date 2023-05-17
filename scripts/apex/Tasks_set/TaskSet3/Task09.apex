// 9. Similar to above task 
// now create two String variables to store firstName and lastName
// using loop generate sample lead email in below format
// firstNameValue+lastNameValue_1@force.com
// firstNameValue+lastNameValue_2@force.com
// firstNameValue+lastNameValue_3@force.com
// firstNameValue+lastNameValue_4@force.com
// firstNameValue+lastNameValue_5@force.com

// Remember to actually replace the value with variable value like 
// jonsnow_1@force.com




String firstName = 'Gozde';
String lastName = 'Aydogan';

for(Integer i = 1 ; i<=5 ; i++){
    System.debug(firstName  + lastName + '_' + i + '@force.com'); 
}