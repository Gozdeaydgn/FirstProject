//Store many names -->  List<String>

//Store unique names --> Set<String>

//Store student names and score --> Map<String,Integer>

//Store all the groups(that contains many names) into a collection

//How to represent one group that have many names --> List<String> 
//How to represent many groups --> List<List <Sting> >


List<String> group1Names = new List<String>{'Zhamilia' , 'Marina' , 'Madina', 'Vita'} ;
List<String> group2Names = new List<String>{'Ali' , 'Hyder' , 'Dua' , 'Elif' } ;
List<String> group3Names = new List<String>{'Jon' , 'Snow' , 'Know' , 'Nothing' } ;


List<List<String>> groupList = new List<List<String>>{
  group1Names,
  group2Names,
  group3Names
};
System.debug('groupList value is : ' + groupList);


//Accessing the item in the list , we use index and it starts from 0


//What if we want to make it slightly easier to access to group that contains names
//for example if we provide 1 ==> (Zhamilia, Marina, Madina, Vita)
//for example if we provide 2 ==> (Ali, Hyder, Dua, Elif)
//for example if we provide 3 ==> (Jon , Nothing)
//  Map <Integer , List<String> >


//for example if we provide 1 ==> (Zhamilia, Marina, Madina, Vita)
//for example if we provide 2 ==> (Ali, Hyder, Dua, Elif)
//for example if we provide 3 ==> (Jon , Nothing)
//  Map <Integer , List<String> >


 Account a = new Account(Name='Apec Inc');
 insert a;
 //Database.insert(a , false );
 a.AnnualRevenue = 900000 ; 
 //update a;


List<Account> accList = new List<Account>();
accList.add( new Account(Name='Sample Account 1') );
accList.add(a);
//insert the 'Sample Account 1' and update 'Apex Inc' in Salesforce
upsert accList ;


// delete this record
 delete accList ;

// Restore the items that deleted
 undelete accList ; 


//APEX TRIGGER : 

/**
 *  Apex Trigger events that cause the trigger to execute
 *  7 EVENTS: 
 *    Before insert, After insert,          
 *    Before update, After update,
 *    Before delete, After delete, 
 *    After undelete
 * 
 * 
 *    Trigger Context Variables (12 of them) :
 *      Variables that provide more information about trigger execution and data
 *      we use it in this format : Trigger.theVariableName
 * 
 * 
 *    Trigger.operationType : 
 *      Return the triggerring event (BEFORE_INSERT , AFTER_INSERT......)
 *    Trigger.size :
 *      Return the size of records entered the Trigger
 * 
 *     Variabless that check for the specific event type
 * 
 *      Trigger.isBefore
 *      Trigger.isAfter
 *      Trigger.isInsert
 *      Trigger.isUpdate
 *      Trigger.isDelete
 *      Trigger.isUndelete
 *      
 * 
 *    Variables that provide access to the records that entered the trigger
 *    Trigger.new 
 *        Return List of sObject with latest field values 
 *        Avaliable in events: before|after insert, before|after update, after undelete
 *     Trigger.newMap 
 *        Return Map of Id and sObject with latest field values
 *        Avaliable in events: after insert, before|after update, after undelete
 *     Trigger.old
 *        Return List of sObject with old field values 
 *        Avaliable in events: before|after update, before|after delete
 *     Trigger.newMap
 *        Return Map of Id and sObject with old field values
 *        Avaliable in events: before|after update, before|after delete
 *       
 *  -------------------------------------------------------------------------------------------------------------------------
 * 
 *    Since multiple records enter the trigger at the same time, you will always use Trigger loop
 *    for(yourSobjectType each : Trigger.new ){
 * 
 *    } 
 *    or 
 *    for(yourSobjectType each : Trigger.old ){
 * 
 *    } 
 * 
 * 
 *    Adding custom error message according to certain conditions
 *      -yourSobjectVariable.addError('Message goes here');
 *      -yourSobjectVariable.fieldName.addError()
 * 
 * 
 * 
 * 
 *    Trigger must have it's own file
 *      the name of your trigger must be the same as the file name
 *      if you rename your trigger, you must rename both file to match your trigger name
 * 
 *     // This is the beginning of your trigger : 
 *        Trigger TheNameOfYourTrigger on yourSOBJECT (Events you listed to goes here ) { 
 * 
 *            YOUR LOGIC GOES HERE
 *      } 
 * 
 *      // This is the ending of your trigger, NO CODE SHOULD BE WRITTEN AFTER THIS LINE  
 */