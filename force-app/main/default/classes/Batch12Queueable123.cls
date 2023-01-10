public class Batch12Queueable123 implements Queueable{

    //Annual Revenuesi 12000 olan accountlara bağlı olan contaclarin lead source leri 'Partner Referal' olanların Description kısmına 'Queuable chain' yazın.. 

    public List<Account> listAcc = [Select id, name, (Select id from Contacts WHERE LeadSource = 'Partner Referal') from Account WHERE AnnualRevenue = 12000];

    public void execute(QueueableContext contex){
        System.debug('Queueable123 is processed ...');

        List<Contact> cList = new List<Contact>();
        for(Account ac : listAcc){
            cList.addAll(ac.Contacts);
        }
        for(Contact c : cList){
            c.Description = 'Queuable chain';
        }
        update cList;

    }





}
