trigger PaymentTObjTrigger on PaymentT__c (before insert, before update) {
    if (Trigger.isBefore) {
        if (Trigger.isInsert) {
            PaymentTTriggerHandler.currencyConversionInsert(Trigger.new);            
        }
        if (Trigger.isUpdate) {
            PaymentTTriggerHandler.currencyConversionUpdate(Trigger.new, Trigger.oldMap);            
        }       
    }
}