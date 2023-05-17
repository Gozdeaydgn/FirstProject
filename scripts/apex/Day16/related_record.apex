/**
Working with related records:

Every look up field in Salesforce actually store the record Id of parent account 
For Example: Account name field in contact stores account Id of parent account

 */

 //Create an account with Name value 'Account From Apex'
 Account a1 = new Account(Name='Account From Apex 2');

 //Insert that into SF
 insert a1;

 //Print that out
 System.debug('a1 value is : ' + a1); 

 //Store the Id field to variable proper data type
Id accId = a1.Id;
System.debug('accId value is : ' + accId); 



 //Create an contact variable and assign it's value
Contact c1 = new Contact();

 //Fill up the FdirstName, LastName
c1.FirstName = 'Apex Contact 1' ;
c1.LastName = 'D' ;

 //and fill up AccountId field with the value you stored in first step
c1.AccountId = accId ;

 //Insert this into SF
insert c1 ;

Contact c2 = New Contact(FirstName='AB', LastName='CD', AccountId=accId) ;
insert c2 ;

//Create a case under c2 with subject 'Case under AB Contact 2'
// contactId field should be filled up with Contact c2 record Id above
// Insert this case into SF and observe 

Case myCase = new Case( Subject = 'Case under Apex Contact 2', ContactId = c2.Id);
insert myCase;