public class CreateTaskBatchable2 implements Database.Batchable<sObject>, Database.stateful {
    public integer count = 0;

    public Database.QueryLocator start(Database.BatchableContext bc){
        database.QueryLocator q1 = Database.getQueryLocator([select id, stageName from opportunity where stageName = 'Closed lost']);

        return q1;
    }
    public void execute(Database.BatchableContext bc, list<opportunity> scope){
        if(scope.Size() > 0){
            count = count + scope.size();
            delete scope;
        }
    }
    public void finish(Database.BatchableContext bc){
        system.debug(count);
    }

}
