trigger CreateChildCaseTrigger on Case (after insert) {

if(Trigger.isAfter && Trigger.isInsert){
    CreateChildCaseHandler.handleAfterInsert(Trigger.new);

}

}