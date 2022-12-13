trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    list<account> accTriggerNew = trigger.new;
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('record in before insert : ' + accTriggerNew);
        system.debug('before # of records inserted : ' + accTriggerNew.size());
        for (account eachAcc: accTriggerNew){
            system.debug('acc id is ' + eachAcc.id + ', acc name is ' + eachAcc.name);
        }        
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('record in after insert : ' + accTriggerNew);
        system.debug('after # of records inserted : ' + accTriggerNew.size());
        for (account eachAcc: accTriggerNew){
            system.debug('acc id is ' + eachAcc.id + ', acc name is ' + eachAcc.name);
        }        
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('record in before update : ' + accTriggerNew);
        system.debug('before # of records updated : ' + accTriggerNew.size());
        for (account eachAcc: accTriggerNew){
            system.debug('acc id is ' + eachAcc.id + ', acc name is ' + eachAcc.name);
        }        
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('record in after update : ' + accTriggerNew);
        system.debug('after # of records updated : ' + accTriggerNew.size());
        for (account eachAcc: accTriggerNew){
            system.debug('acc id is ' + eachAcc.id + ', acc name is ' + eachAcc.name);
        }        
    }

    /*
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('account before insert trigger called when it is inserted');    
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('account after insert trigger called when it is inserted');        
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('account before update trigger called when it is updated');    
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('account after update trigger called when it is updated');        
    }
    
    
    
    if (Trigger.isBefore) {
        system.debug('account before insert trigger called');
        
    }
    if (Trigger.isAfter) {
        system.debug('account after insert trigger called');
        
    }
    */

    

}