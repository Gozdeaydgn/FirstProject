List<Account> myList = [SELECT Id, Name, Description
                        FROM Account
                        WHERE Name LIKE 'Cool%'];

System.debug('Running Apex - anon  Code'); 


AccountUpdateAsync q = new AccountUpdateAsync('From queuebale job' ,  myList); 
System.enqueueJob(q); 

// TaskAfterAccountUpdate tq = new TaskAfterAccountUpdate();
// System.enqueueJob(tq);