public class CaseQueueableExample implements Queueable{

    public void execute(QueueableContext qc){
        Case cs = new Case();
        cs.origin = 'Web';
        cs.Status = 'New';
        insert cs;
    }

}
