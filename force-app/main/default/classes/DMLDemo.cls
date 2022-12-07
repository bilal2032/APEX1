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
    public static void dmlUpdateDemo_2() {
        Account acc = new account();
        acc.Name = 'Oz\'s Store';
        insert acc; 
        
        acc.Name = 'HSP Store';
        update acc;
      
    }
    public static void dmlUpdateDemo_3() {
        account acc = [select ID, name from account where name='SoftInnovas incs.' limit 1];

        acc.Name = 'SoftInnovas inc.';
        update acc;
        system.debug('Acc ==> ' + acc);
        
    }
    public static void dmlInsertDemo_4() {
        account acc = [select ID from account where name = 'SoftInnovas inc.' limit 1];

        Contact cnt = new Contact();
        cnt.lastname = 'Biden';
        cnt.accountid = acc.id;
        insert cnt;
        system.debug('Cnt --> ' + cnt);
       
    }
    public static void dmlUpdateDemo_5() {
        Salesforce_project__c sp = [Select ID, name from Salesforce_project__c order by createdDate desc limit 1];

        Salesforce_ticket__c st = new Salesforce_ticket__c();
        st.Subject__c = 'Learn apex DML';
        st.Priority__c = 'High';
        st.Status__c = 'New';
        st.Requested_by_date__c = date.today();
        st.Salesforce_project__c = sp.id;
        insert st;
        
    }
    public static void dmlMultipleRecordInsert_right() {
        List<account> listAcc = new List<account>();

        account acc1 = new account();
        acc1.Name = 'acc bulk 1';
        listacc.add(acc1);

        account acc2 = new account();
        acc2.Name = 'acc bulk 2';
        listacc.add(acc2);

        account acc3 = new account();
        acc3.Name = 'acc bulk 3';
        listacc.add(acc3);

        insert listAcc;
        
    }
    public static void dmlMultipleRecordInsert_right2() {
        List<account> listAcc = new List<account>();

        for(integer i=0; i<155; i++){
            account acc = new account();
            acc.Name = 'SoftInnovas v' + i;
            acc.active__c = 'yes';
            listAcc.add(acc);

        }
        if(!listAcc.isEmpty()){
            insert listAcc;
        }       
    }
    public static void dmlMultipleRecordUpdate_right() {
        list<account> listAccount = [Select ID, name, active__c from account];

        list<account> updateAccount =new list<account>();

        for(Account acc: listAccount){
            if(acc.active__c =='Yes'){
                acc.Name = acc.Name + ' via B.O';
                updateAccount.add(acc); 
            }
        }
        if(!updateAccount.isEmpty()){
            update updateAccount;
        }        
    }
}
