public class AccountQueueableExample implements Queueable{
    List<account> listAcc = new list<account>();
    //constructor
    public AccountQueueableExample(List<account> accounts){
        listAcc = accounts;
    }
    public void execute(QueueableContext qc){
        for (account eachAcc : listAcc) {
            eachAcc.Name +=  ' -- SI';
        }
        update listAcc;
    }
}