// Get currently loggedin user
// and store it into User variable 


// insert an Account here 
Account a = new Account(Name='cool'); 
insert a; 


// IF WE DO SOMETHING LIKE THIS IN TRIGGER 
// WE WILL GET AN ERROR CALLED MIXED DML ERROR
// IT'S SAYING YOU CAN NOT PEFORM DML ON
// SET-UP OBJECTS( USER, PROFILE, GROUP, QUEUE)
// AND NON-SETUP OBJECT (ACCOUNT CONTACT, YOURCUSTOMOBJECT__C AND SO ON)
// TOGETHER 