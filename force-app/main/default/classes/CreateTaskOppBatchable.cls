public with sharing class CreateTaskOppBatchable implements Database.Batchable<sObject> {

    public Database.QueryLocator start(Database.BatchableContext bc){
        database.QueryLocator q1 = Database.getQueryLocator([select id, name, closeDate, OwnerId from opportunity where stageName != 'Closed Won' and stageName != 'Closed Lost' and LastModifiedDate < LAST_N_DAYS:7 ]);

        return q1;

    }
    public void execute(Database.BatchableContext bc, list<opportunity> scope){
        List<Task> taskList = new List<Task>();
        for(opportunity eachOpp : scope){
            Task tsk = new Task();
            tsk.Subject = 'Other';
            if(eachOpp.CloseDate < Date.Today()){
                tsk.ActivityDate = Date.Today();
            }else{
                tsk.ActivityDate = eachOpp.CloseDate.addDays(-2);
            }
            tsk.Description = 'Reminder – Please take action on the Opportunity';
            tsk.WhatId = eachOpp.Id;
            tsk.OwnerId = eachOpp.OwnerId;
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
