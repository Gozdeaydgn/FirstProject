/**
Get 1 Account Record (Name, AnnualRevenue, Rating) 
SELECT Name, AnnualRevenue, Rating FROM Account LIMIT 1
and Store it into Account variable
 */


//Apex and SOQL Work Seamlessly together
//We can use SOQL to get data and store it into
//sObject type or list sObject type
//[YOUR SOQL GOES HERE]

Account a1 = [SELECT Name, AnnualRevenue, Rating FROM Account LIMIT 1] ;     // LIMIT 1 ==> FIRST LINE <==
System.debug('a1 value is : ' + a1);
//Only fields that avaliable are the fields that showed up in SELECT Line
//System.debug('a1.Phone value is : ' + a1.Phone); // UNcomment yap unutma



// Get All the account record with Rating field not NULL
// Include, Id, Name, Rating, AnnualRevenue
// Store it into List<Account>
List<Account> accList = [SELECT Id,Name, Rating, AnnualRevenue
                         FROM Account
                         WHERE Rating != NULL ] ; 


// Print out the size of the list
System.debug('accList.size() value is : ' + accList.size());

// Print out the Name, Rating in the Loop
for(Account each : accList) {
    System.debug('Name value : ' + each.Name + 'Rating value : ' + each.Rating);
}



// Get All the Lead Name, Status if the Status is Working-Contacted
// Store it into the list and loop through each item
// Print the name and status    

List<Lead> leadLst = [SELECT Name, Status 
                      FROM LEAD 
                      WHERE Status = 'Working - Contacted'];

for(Lead each : leadLst) {
    System.debug(each.Name + ' ----> ' + each.Status  );
}




    
