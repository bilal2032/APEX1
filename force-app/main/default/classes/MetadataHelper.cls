public with sharing class MetadataHelper {
    public static Decimal getCurrencyRate(String currencyISOCode) {
        return Currency_Conversion__mdt.getInstance(currencyISOCode).Rate__c;        
    }
}