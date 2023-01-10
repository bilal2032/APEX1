public class BatchApex12 implements Database.Batchable<SObject>{

    //Tum Accountlarin isimlerinin sonuna batch 12 ekleyelim..
    
    //start: tum data buraya cagrilir ve return edilir execute metoduna
    public Database.QueryLocator start(Database.BatchableContext bc){
        string query = 'Select id, name from Account';
        return Database.getQueryLocator(query);
    }

    //execute: belirlene sayilarla recordlarla parca parca istenen islem yapilir.
    public void execute(Database.BatchableContext bc, List<Account> scope){
        for(Account ac : scope){
            ac.Name = ac.Name + 'batch12';
        }
        try{
            update scope;
        }
        catch(Exception e){
            System.debug(e);
        }
    }

    //finish: tum islem bittiginde 1 kere calisir.. mesaj veya email atabilirsiniz..
    public void finish(Database.BatchableContext bc){
        System.debug('the work is done!');

        AsyncApexJob a = [Select id, Status, NumberOfErrors, JobItemsProcessed, TotalJobItems, CreatedBy.email from AsyncApexJob WHERE id = : bc.getJobId()];

        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        String[] toAddress = new String[]{'hspbilal@gmail.com', 'snnbilal@hotmail.com', 'enesusa@hotmail.com', 'ozturkmelekfw@gmail.com', 'snnbilal739@gmail.com', 'ozturkenes1977@gmail.com'};
        email.setToAddresses(toAddress);
        email.setSubject('Apex Sharing Recalculation ' + a.status);
        email.setPlainTextBody(system.label.mailMessage + '\n' + 'The batch apex job processed ' + a.TotalJobItems + '\n' + 'batches with ' + a.NumberOfErrors + ' failures');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});
    }
}
