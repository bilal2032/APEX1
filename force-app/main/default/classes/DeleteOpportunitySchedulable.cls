public class DeleteOpportunitySchedulable implements Schedulable {
    public void execute(SchedulableContext sc){
        CreateTaskBatchable2 del = new CreateTaskBatchable2();
        Database.executeBatch(del, 200);            
    }


}
