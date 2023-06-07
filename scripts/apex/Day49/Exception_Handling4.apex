System.debug('Starting the code'); 

// create a savepoint to go back to if something goes wronng to rollback 
Savepoint sp = Database.setSavepoint();

try {
       
    Account a = new Account(Name='Just like a game');
    insert a ; 
    Contact c = new Contact(LastName='', AccountId = a.Id) ; 
    insert c ; 


} catch (DmlException e) {
    
    System.debug('EXCEPTION OCCURED ROLL BACK EVERYTHING!!!'); 
    // Rollback to the previous point before the Account was inserted
    Database.rollback(sp);

}

System.debug('Ending the code'); 