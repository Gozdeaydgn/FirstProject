# Apex Trigger
Apex triggers enable you to perform custom actions before or after events to records in Salesforce, such as 
- insertions, 
- updates, or 
- deletions. or
- restore from recycle bin (undelete)

Typically, you use triggers to perform operations based on specific conditions, to modify related records or restrict certain operations from happening. You can use triggers to do anything you can do in Apex, including executing SOQL and DML or calling custom Apex methods.

Use triggers to perform tasks that can’t be done by using the point-and-click tools in the Salesforce user interface. For example, if validating a field value or updating a field on a record, use validation rules and flows instead

Triggers can be defined for top-level standard objects, such as Account or Contact, custom objects, and some standard child objects. 

Triggers are active by default when created. Salesforce automatically fires active triggers when the specified database events occur.
 
## Trigger Syntax

trigger must have it's own file. 

It can be created from Developer console or from SFDX project in VS code.
If created from vs code,the name of your trigger must be the same as the file name. if you rename your trigger, you must rename both file to match your trigger name

 // this is the beginning of your trigger
 trigger TheNameOfYourTrigger on YourSOBJECT ( events you listed to goes here) {
   
   //YOUR LOGIC GOES HERE 

 }
 // this is the ending of your trigger 
 // NO CODE SHOULD BE WRITTEN AFTER THIS LINE 

 

To execute a trigger before or after insert, update, delete, and undelete operations, specify multiple trigger events in a comma-separated list. The events you can specify are:
- before insert
- before update
- before delete
- after insert
- after update
- after delete
- after undelete


## Trigger example 
trigger HelloWorldTrigger on Account (before insert) {
    System.debug('Hello World!');
}

In this example, every time record is inserted either from UI or code, you can see the log generated in developer console. 

## Trigger Context Variable

variables (total 12) that provide more information about trigger execution and records that entered the trigger. 
It can be used in this format Trigger.theVariableName

- Trigger.operationType :
return the triggering event (BEFORE_INSERT, AFTER_UPDATE.....)
- Trigger.size :
return the size of records entered the Trigger

variables that check for the specific event type 

- Trigger.isBefore
- Trigger.isAfter
- Trigger.isInsert
- Trigger.isUpdate
- Trigger.isDelete
- Trigger.isUndelete 

variables that provide access to the records that entered the trigger 
- Trigger.new :
    return List of sObject with latest field values 
    available in events : before|after insert, before|after update , after undelete
- Trigger.newMap :
    return Map of Id and sObject with latest field values 
    available in events : after insert, before|after update , after undelete
- Trigger.old : 
    return List of sObject with old field values
    available in events :  before|after update, before|after delete
- Trigger.oldMap : 
    return Map of Id and sObject with old field values 
    available in events :  before|after update, before|after delete 
Akbar — 03/20/2023 2:01 PM
Image
Here is the availability of data related context variables 


Unlike flow multiple records can enter the Trigger at the same time.
Since multiple records enter the trigger at the same time, you will always use Trigger loop
for(yourSobjectType each : Trigger.new ){

}

or

   for(yourSobjectType each : Trigger.old ){

   } 


If you need to access old value and new value at the same time, here is the technique to use
   for(yourSobjectType each : Trigger.new ){

          // if you need to access old fields values you can do this
          yourSobjectType oldX = Trigger.oldMap.get(each.id); 
          // do your comparison or any logic here 
   } 

If it was a before update on Account object to keep track of Account Name change for example in description field, this is how it will look like
trigger AccountTrigger on Account(before update){
    for(Account each : Trigger.new ){

    // if you need to access old fields values you can do this
        Account oldAcc = Trigger.oldMap.get(each.id); 
        // do your comparison or any logic here
        if(each.Name!= oldAcc.Name){
            each.Description = oldAcc.Name ; 
        } 
    } 
}
 
Here is the availability of data related context variables 


Unlike flow multiple records can enter the Trigger at the same time.
Since multiple records enter the trigger at the same time, you will always use Trigger loop
   for(yourSobjectType each : Trigger.new ){

   }

or
   for(yourSobjectType each : Trigger.old ){

   } 

If you need to access old value and new value at the same time, here is the technique to use
   for(yourSobjectType each : Trigger.new ){

          // if you need to access old fields values you can do this
          yourSobjectType oldX = Trigger.oldMap.get(each.id); 
          // do your comparison or any logic here 
   } 

If it was a before update on Account object to keep track of Account Name change for example in description field, this is how it will look like
trigger AccountTrigger on Account(before update){
    for(Account each : Trigger.new ){

    // if you need to access old fields values you can do this
        Account oldAcc = Trigger.oldMap.get(each.id); 
        // do your comparison or any logic here
        if(each.Name!= oldAcc.Name){
            each.Description = oldAcc.Name ; 
        } 
    } 
}