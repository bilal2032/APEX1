trigger SalesforceProjectTriggers on Salesforce_Project__c (before insert, after insert, before update, after update) {
    // if (Trigger.isAfter && Trigger.isInsert) {
    //     //here we will call handler to create default ticket.
    //     SalesProjectTriggerHandler.createDefaultTicket(trigger.new);

    //     system.debug('calling future method NOW.');
    //     SalesProjectTriggerHandler.updateProjectDescription(trigger.NewMap.keySet());
    //     system.debug('called future method DONE!');
    // }
    // if (Trigger.isBefore && Trigger.isUpdate) {
    //     //do the completion valdiation
    //     // SalesProjectTriggerHandler.validateSPComplete(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    // }
    // if (Trigger.isAfter && Trigger.isUpdate) {
    //     SalesProjectTriggerHandler.spCompletedStatus(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);

    // }



    /*

    if (trigger.isBefore && trigger.isUpdate) {

        SalesProjectTriggerHandler.updateSTstatus(trigger.New, trigger.OldMap);
        
    }

    /*

    if(trigger.isAfter && trigger.isUpdate){
        SalesProjectTriggerHandler.method1(trigger.new,trigger.newMap,trigger.oldMap);
        }

/*    
    if (Trigger.isAfter && Trigger.isInsert) {
        //here we will call handler to create default ticket.
        SalesProjectTriggerHandler.createDefaultTicket(trigger.new);
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        //do the completion valdiation
        SalesProjectTriggerHandler.validateSPComplete(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }*/
}