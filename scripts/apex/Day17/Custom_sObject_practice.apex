/**
Create Custom Object
   Vehicle :
       - Name field make it auto number 
       - In this format V-{000}
   Fields :
       - Year as a number 
       - Model as text 
       - Make as text 
       - Price as currency

   Now we need to access here in VSCode 
   Go to command pallatte and type 
   SFDX: Refresh Object Definition
   select All object 
   now you have access to latest changes you made under Object manager    
   
 */


//Create a contact with LastName
//insert into Salesforce
Contact con = new Contact(LastName = 'Snow');
insert con;
System.debug('con value is : ' + con); 



//Create a variable vehicle with all yhe fields 
Vehicle__c v1 = new Vehicle__c(Make__c  = 'Audi',
                               Model__c = 'A8',
                               Year__c  = 2024 ,
                               Price__c = 10000000 );


 // including ContactId field set to the Id from above contact 
 v1.Contact__c =  con.Id ; 


 // insert this contact 
 insert v1 ; 
 System.debug('v1 value is : ' + v1); 

 System.debug('v1.Name value is : ' + v1.Name); 