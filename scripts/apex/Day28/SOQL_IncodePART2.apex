/**
Get 1 Account Record (Name, AnnualRevenue, Rating) 
SELECT Name, AnnualRevenue, Rating FROM Account LIMIT 1
and Store it into Account variable
 */

//Apex and SOQL Work Seamlessly together
//We can use SOQL to get data and store it into
//sObject type or list sObject type
//(YOUR SOQL GOES HERE)


// This will throw an error since we are trying to store many Account
// into a variable that hold single account
//System.QueryException: List has more than 1 row for assignment to SObject
 //AnonymousBlock: line 14, column 1
 //Account a = [Select Name from Account];
 //System.debug('a value is : ' + a);

 String lastName = 'Green' ;

 //Get all the Contact FirstName, LastName
 //if the LastName field values is whatever variable str has
 //SELECT FirstName, LastName FROM Contact
 //WHERE LastName = 'Green'


List<Contact> contactLst = [SELECT FirstName, LastName
                            FROM Contact
                            WHERE LastName = 'Green'];
                            System.debug('contactLst value is : ' + contactLst);


//Create 2 varible for caseStatus and casePriority
//Get All the cases with Status of caseStatus and Priority of casePriority
//Store the result in List of Case


String caseStatus   = 'Closed'; 
String casePriority = 'High' ; 

List<Case> caseList = [SELECT Subject, Status, Priority FROM CASE
                        WHERE Status = :caseStatus AND Priority = :casePriority ] ;


// print out Subject, Status, Priority for each Case
for(Case each : caseList) {
    System.debug('------------------');
    System.debug(each.Subject +'--'+ each.Status + '--' + each.Priority );
} 



// result of [ SOQL QUERY ] is almost always List of sObject type
// if we do not need this List variable we can directly use it [SOQL]
// for example , print out all Book Name in your SF organization
// SELECT Name from Book__c

for(Book__c each : [SELECT Name from Book__c]    ) {
    System.debug('Book Name value : ' + each.Name  );
}


//2.33 da kaldim
