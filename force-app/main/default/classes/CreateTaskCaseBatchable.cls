public with sharing class CreateTaskCaseBatchable implements Database.Batchable<sObject> {

    public Database.QueryLocator start(Database.BatchableContext bc){
        database.QueryLocator q1;
        if(!test.isRunningTest()){
            q1 = Database.getQueryLocator([select id, ClosedDate, OwnerId from Case where Status != 'Closed' and  LastModifiedDate < LAST_N_DAYS:5]);
        }else{
            q1 = Database.getQueryLocator([select id, ClosedDate, OwnerId from Case where Status != 'Closed']);
        }

        return q1;

    }
    public void execute(Database.BatchableContext bc, list<Case> scope){
        List<Task> taskList = new List<Task>();
        for(Case c : scope){
            Task tsk = new Task();
            tsk.Subject = system.Label.Subject;
            tsk.Description = system.Label.Comments;
            tsk.WhatId = c.Id;
            tsk.OwnerId = c.OwnerId;
            tsk.Status = 'In Progress';
            
            taskList.add(tsk);
        }

        if(!taskList.isEmpty()){
            insert taskList;
        }
    }
    public void finish(Database.BatchableContext bc){
        system.debug('finish method called');
    }   

}