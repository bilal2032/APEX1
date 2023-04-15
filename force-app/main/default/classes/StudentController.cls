public with sharing class StudentController {
    @AuraEnabled
    public static List<Student__c> searchStudentsByPostalCode(String searchKey){
        searchKey='%'+searchKey+'%';
        return [SELECT Student_Name__c, Class__c, Phone__c, Email__c, Postal_Code__c FROM Student__c WHERE Postal_Code__c LIKE :searchKey WITH SECURITY_ENFORCED];
    }
}