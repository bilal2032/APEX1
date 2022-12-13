trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {
    if (Trigger.isBefore) {
        system.debug('We are in before trigger. Not even saved');
        if (Trigger.isInsert) {
            system.debug('we are in before insert trigger');            
        }
        if (Trigger.isUpdate) {
            system.debug('we are in before update trigger');            
        }      
    }
    if (Trigger.isAfter) {
        system.debug('We are in after trigger. Not even saved');
        if (Trigger.isInsert) {
            system.debug('we are in after insert trigger');            
        }
        if (Trigger.isUpdate) {
            system.debug('we are in after update trigger');            
        }      
    }

}