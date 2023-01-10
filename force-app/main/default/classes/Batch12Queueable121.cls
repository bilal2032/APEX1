public class Batch12Queueable121 implements Queueable{

    //Accountlardan Annual Revenuesi 12000 olanlara birer contact create edip bağlayalım.
    public static List<Account> accList = [Select id, name, AnnualRevenue from Account where AnnualRevenue = 12000];      
    

    //Only execute method is must...
    public void execute(QueueableContext contex){
        System.debug('Queueable121 is processed ...');

        List<Contact> conList = new List<Contact>();
        if(!accList.isEmpty()){
            for(Account ac : accList){
                contact c = new Contact();
                c.LastName = 'Queueable121 Test Again';
                c.AccountId = ac.Id;
                conList.add(c);
            }
            insert conList;
            ID jobId2 = System.enqueueJob(new Batch12Queueable122());
        }
    }

}
