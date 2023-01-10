public class Batch12Queueable122 implements Queueable{

    //Annual Revenuesi 12000 olan accountlara bağlı olan contaclarin lead source ni 'Partner Referal' yapın..
    public List<Account> accList = [Select id, name, (Select id, LeadSource from Contacts) from Account where AnnualRevenue = 12000];

    public void execute(QueueableContext contex){
        System.debug('Queueable122 is processed ...');

        List<Contact> conList = new List<Contact>();
        for (Account ac : accList){
            conList.addall(ac.contacts);
        }
        for(Contact c : conList){
            c.LeadSource = 'Partner Referal';
        }
        update conList;
        ID jobId3 = System.enqueueJob(new Batch12Queueable123());
    }
}
