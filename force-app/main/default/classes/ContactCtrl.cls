public with sharing class ContactCtrl {
    @AuraEnabled
    public static List<Contact> searchContacts(String searchKey){
        searchKey='%'+searchKey+'%';
        return [SELECT FirstName, LastName, Email, Title FROM Contact WHERE Name LIKE :searchKey WITH SECURITY_ENFORCED];
    }
}