@isTest
public class DmlDemo9Test {
    @isTest
    private static void dmlInsert1Test() {
        DmlDemo9.dmlInsertDemo_stndObj();

        List<Account> listAcc = [select id, name from account where name = 'SoftInnovas'];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].Name);        
    }
    @isTest
    private static void dmlInsert4Test() {

        Account acc = new Account();
        acc.name = 'SoftInnovas Inc.';
        insert acc;
        DmlDemo9.dmlInsertDemo_4();

        List<Contact> allContacts = [select id, name, lastName from contact where lastname = 'Biden'];
        system.assertEquals('Biden', allContacts[0].lastName);        
    }
    @isTest
    private static void dmlInsert5test() {
        Salesforce_Project__c sp  = new Salesforce_Project__c();
        sp.Project_Name__c = 'SP test';
        sp.Status__c = 'New';
        insert sp;

    DmlDemo9.dmlInsertDemo_5(); //will this work?

        //to verify, we soql.
        List<Salesforce_Ticket__c> listST = [select id, subject__c, salesforce_project__c 
                            from Salesforce_Ticket__c where Subject__c = 'Learn apex dml'];
        system.assertEquals(sp.Id, listST[0].Salesforce_Project__c);
    }
}
