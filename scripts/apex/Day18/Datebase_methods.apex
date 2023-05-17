/**
Create a List of Contacts and add 3 Contacts
2 contacts with all required fields filled : LastName
1 contact only provide firstName field value
now try to insert this and see what you get
    - will it insert 2 and fail 1
    - will it fail all of them
 */

List<Contact> contactList = new List<Contact>() ; 
contactList.add( new Contact(LastName = 'TDX Contact1')  ); 
contactList.add( new Contact(LastName = 'TDX Contact2')  ); 
//THIS ONE IS MISSING REQUIRED FIELD !!!!!!!!!!!!!!!
contactList.add( new Contact(FirstName = 'Bad Apple WITHOUT REQUIRED LASTNAME FILLED UP')  ); 

System.debug('contactList value is : ' + contactList); 

//THIS WILL FAIL BECAUSE ONE OF THE ITEM HAS NO REQUIRED FIELD FILLED UP 
// insert contactList ; 


//GROUP CHAT: IMPORTANT
//Last Name is a required field in salesforce contact section, we cannot add a contact without writing the last name
//AND it won't save in salesforce = code won't run in apex
//The ones with LastName field filled will work, and the one without required field filled will not.
//Whole list fail to insert because one item is incomplete with requred field
//ONE OF US FOR ALL OF US, ALL OF US FOR ONE OF US :)
//2.part:
//You can say "true" if you don't want to let the data partially inserted into the database based on the requirement.


//AKBAR:
// HOW DO WE ACTUALLY GET THE RESULT OF INSERT 2 AND FAIL 1 
// Use Database class methods that mirror DML operation 
// with some additional options 
    

// Database.insert(The List you want to insert 
//                 , specify you want All Or Nothing in boolean ); 
// second parameter : allOrNothing
    // if true -->> either all get inserted or none get inserted if any item was failed to insert 
    // if false -->> items that successfully can be inserted will be inserted and items can not be inserted will not 
    // it will not fail the whole insert operation 
    
Database.insert(contactList ,  false  ); 