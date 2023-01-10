public class Batch12 implements Database.Batchable<SObject>{

    //Batch=>Tüm Accountların name lerininin yanına update kelimesini ekleyelim. Annual revenue si olmayanların da Annual Revenueleri 12000 yapılsın..
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator q1 = Database.getQueryLocator([Select id, name, AnnualRevenue from Account]);
        return q1;
    }

    public void execute(Database.BatchableContext bc, List<account> scope){
        List<Account> updateAccounts = new List<Account>();
        for(Account acc : scope){
            acc.Name += 'BO';
            if(acc.AnnualRevenue == null){
                acc.AnnualRevenue = 12000;
            }
            updateAccounts.add(acc);
        }
        update updateAccounts;
    }

    public void finish(Database.BatchableContext bc){
        System.debug('The work is DONE!');

        // Batch12Queuable121 abc = new Batch12Queuable121();
        // System.enqueueJob(abc);
        ID jobId = System.enqueueJob(new Batch12Queueable121());
        // System.debug(jobId);
    }
}
