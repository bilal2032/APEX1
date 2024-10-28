public with sharing class PaymentTTriggerHandler {
    public static void currencyConversionInsert(List<PaymentT__c> newPaymentT) {
        for (PaymentT__c py : newPaymentT) {
            Decimal crossRate = MetadataHelper.getCurrencyRate(py.Currency_Incurred_In__c);

            if(py.Currency_Incurred_In__c != null && py.Amount_Incurred__c != null){
                py.Amount_Converted_to_USD__c = py.Amount_Incurred__c/crossRate;
            } 
        }       
    }

    public static void currencyConversionUpdate(List<PaymentT__c> newPaymentT, Map<Id, PaymentT__c> oldPaymentTMap) {
        for (PaymentT__c py : newPaymentT) {
            Decimal crossRate = MetadataHelper.getCurrencyRate(py.Currency_Incurred_In__c);

            if((py.Currency_Incurred_In__c != oldPaymentTMap.get(py.Id).Currency_Incurred_In__c || py.Amount_Incurred__c != oldPaymentTMap.get(py.Id).Amount_Incurred__c) && (py.Currency_Incurred_In__c != null && py.Amount_Incurred__c != null)){
                py.Amount_Converted_to_USD__c = py.Amount_Incurred__c/crossRate;                           
            } else if((py.Currency_Incurred_In__c != oldPaymentTMap.get(py.Id).Currency_Incurred_In__c || py.Amount_Incurred__c != oldPaymentTMap.get(py.Id).Amount_Incurred__c) && py.Currency_Incurred_In__c == null || py.Amount_Incurred__c == null){
                py.Amount_Converted_to_USD__c = null;
            }
        }         
    }
}