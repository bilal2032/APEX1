public class DMLDemo {
    public static void dmlInsertDemo_stnobj() {
        Account acc = new account();
        acc.Name = 'SoftInnovas';
        insert acc; 
        
     
    }
    public static void dmlInsertDemo_cstObj () {
        Salesforce_project__c spNew = new Salesforce_project__c();
        spNew.project_name__c = 'Teach DML to Batch12';
        spNew.description__c = 'We are doing fine!';
        insert spNew;
        
    }
    public static void dmlUpdateDemo_1() {
        Account acc = new account();
        acc.Name = 'SfIn';
        insert acc; 
        
        acc.Name = 'SfIn Inc.';
        update acc;
      
    }
}
