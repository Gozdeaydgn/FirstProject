@isTest
private class AddPrimaryContactTest {

    @isTest
    static void testAddPrimaryContact(){
        
        //Arrage
        List<Account> accounts = new List<Account>(); 
        for(Integer i=0;i<50;i++){
            Account acc = new Account(Name = 'Test Account '+ i, BillingState='CA'); 
            accounts.add(acc); 
        }
        insert accounts ; 
        Contact c = new Contact(LastName='Snow'); 
        
        //Act 
        Test.startTest(); 
         AddPrimaryContact q = new AddPrimaryContact(c, 'CA');
         System.enqueueJob(q) ; 
        Test.stopTest();         
        
        //Assert 
        //check result
        List<Contact> contacts = 
            [SELECT Id from Contact WHERE Contact.Account.BillingState='CA']; 
         System.debug('contacts size ' + contacts);
        
        Assert.areEqual(50, contacts.size()) ; 
        
        
        
    }
    
    
}