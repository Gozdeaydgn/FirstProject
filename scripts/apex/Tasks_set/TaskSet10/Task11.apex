/**
11. Continue from above task (in different file)
   - Create 5 placeholder Contact under this Account and fill up as below
      - LastName : AccountName followed by (1,2,3,4,5)
      - MailingCountry     has same value as Account BillingCountry
      - MailingState       has same value as Account BillingState
      - MailingCity        has same value as Account BillingCity
      - MailingPostalCode  has same value as Account BillingPostalCode

   - Steps : 
      - Create an empty List of Contact with name contactList
      - use for loop to iterate over 5 iteration 1-5
      - Create an Contact variable , assign value as above 
      - assign the AccountId field to the Id of targetAcc
      - add it to your contactList
         - or do in one shot
      - outside of your loop
      - insert contactList
         - print out the List, observe Ids generated for Contact
      - verify from your Salesforce org 
 */
 /// create a contact under this account 
// fill up the fields as below 
//       - `LastName` : AccountName followed by 1 contact
//       - `MailingCountry`     has same value as Account `BillingCountry`
//       - `MailingState`       has same value as Account `BillingState`
//       - `MailingCity`        has same value as Account `BillingCity`
//       - `MailingPostalCode`  has same value as Account `BillingPostalCode`
// insert into salesforce 

 Contact con = new Contact(); 
 con.AccountId         = targetAcc.Id ; 
 con.LastName          = targetAcc.Name + ' 1 contact'; 
 con.MailingCountry    = targetAcc.BillingCountry ; 
 con.MailingState      = targetAcc.BillingState ; 
 con.MailingCity       = targetAcc.BillingCity ; 
 con.MailingPostalCode = targetAcc.BillingPostalCode ; 

 insert con ; 



//----------

//   Continue from above task (in different file)
//    - Create 5 placeholder Contact under this **Account** and fill up as below
//       - `LastName` : AccountName followed by (1,2,3,4,5) contact
//       - `MailingCountry`     has same value as Account `BillingCountry`
//       - `MailingState`       has same value as Account `BillingState`
//       - `MailingCity`        has same value as Account `BillingCity`
//       - `MailingPostalCode`  has same value as Account `BillingPostalCode`
   
//    - Steps : 
//       - Create an empty **List of Contact** with name `contactList`
//       - use for loop to iterate over 5 iteration 1-5
//       - Create an Contact variable , assign value as above 
//       - assign the `AccountId` field to the **Id** of `targetAcc`
//       - add it to your `contactList`
//          - or do in one shot
//       - outside of your loop
//       - **insert** `contactList`
//          - print out the List, observe Ids generated for Contact
//       - verify from your Salesforce org