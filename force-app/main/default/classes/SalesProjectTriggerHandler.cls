public class SalesProjectTriggerHandler {
    public static void createDefaultTicket(List<salesforce_project__c> spTriggerNew) {
        List<Salesforce_Ticket__c> stList = new list<Salesforce_Ticket__c>();
        for (salesforce_project__c eachSP : spTriggerNew) {
            Salesforce_Ticket__c st  = new Salesforce_Ticket__c();
            st.Subject__c = 'Default st';
            st.Salesforce_Project__c = eachSP.id;
            stList.add(st);
        }
        if (!stList.isEmpty()) {
            insert stList;
        }
   }

   public static void validateSPComplete(List<salesforce_project__c> spTriggerNew, List<salesforce_project__c> spTriggerOld,
   Map<Id, salesforce_project__c> spTriggerNewMap, Map<Id, salesforce_project__c> spTriggerOldMap) {
        set<id> spIds = new set<Id>();
        for (salesforce_project__c eachSP : spTriggerNew) {
            if (eachSP.Status__c == 'Completed' && eachSP.Status__c != spTriggerOldMap.get(eachSP.Id).Status__c) {
                spIds.add(eachSP.Id);
            }
        }

        //get all Not-completed tickets of all comleted project
        List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c
        where Salesforce_Project__c in :spIds and status__c != 'Completed'];

        for (salesforce_ticket__c eachST : listST) {
            Salesforce_Project__c sp = spTriggerNewMap.get(eachst.Salesforce_Project__c);
            sp.Status__c.addError('Cannot complete project because all tickets are not completed. Go away now.');
        }
   }
   @future
   public static void updateProjectDescription(Set<id> SpIds){
        system.debug('inside future now. Okay?');
        List<Salesforce_Project__c> allSp = [select id, description__c from salesforce_project__c where id in : spIds];

        for(salesforce_project__c eachSP : allSp){
            eachSP.Description__c += '. Updated from future';
        }
        update allSp;
   }
   public static void spCompletedStatus(List<salesforce_project__c> spTriggerNew, List<salesforce_project__c> spTriggerOld,
   Map<Id, salesforce_project__c> spTriggerNewMap, Map<Id, salesforce_project__c> spTriggerOldMap){
        set<id> spIds = new set<id>();
        for(salesforce_project__c eachSp : spTriggerNew){
            if(eachSP.Status__c == 'Completed' && eachSP.Status__c != spTriggerOldMap.get(eachSP.Id).Status__c){
                spIds.add(eachSp.id);
            }

        }
        if(!spIds.isEmpty()){
            completeAllTickets(spIds);
        }

   }
   @future
   public static void completeAllTickets(set<id> spIds){
        List<salesforce_ticket__c> allST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c where salesforce_project__c in : spIds and status__c != 'Completed'];

        for(salesforce_ticket__c eachST : allST){
            eachST.status__c = 'Completed';
        }
        update allST;

   }


    /*
    public static void updateSTstatus(list<Salesforce_Project__c> triggerNew, Map<id, Salesforce_Project__c> triggerOldMap) {

        Set<id> spIDs = new Set<id>();
        for(Salesforce_Project__c eachSP : triggerNew){
            if(eachSP.Status__c == 'Completed' && eachSP.Status__c != triggeroldMap.get(eachSP.id).Status__c){
                spIDs.add(eachSP.id);
            }
        }

        List<Salesforce_Ticket__c> listST = [Select id, Status__c, Salesforce_Project__c from Salesforce_Ticket__c where Salesforce_Project__c in : spIDs];

        for(Salesforce_Ticket__c eachST : listST){
            eachST.Status__c = 'Completed';
        }
        update listST;        
        
    }


    /*

// 1.Write trigger on Salesforce Project Object.
// 2.When Salesforce Project status is completed. Then query all salesforce tickets which is not completed(status).
// 3.Make Salesforce Ticket status completed.

    public static void method1(List<Salesforce_Project__c> ltriggernew, Map<Id,Salesforce_Project__c> triggernewMap, map<id,Salesforce_Project__c> triggeroldMap) {
        set<id> ids = new set<id>();
        for(Salesforce_Project__c sp : ltriggernew){
            if(sp.Status__c=='Completed' && sp.Status__c!=triggeroldmap.get(sp.id).status__c){
                ids.add(sp.id);
            }
        }

        List<Salesforce_Ticket__c> stList =[select id, name, Salesforce_Project__c, status__c from Salesforce_Ticket__c where Salesforce_Project__c   in : ids  and status__c!='Completed'];
        for(Salesforce_Ticket__c spp : stList){
            spp.Status__c = 'Completed';
        }
        update stList;
    }
/*



    public static void createDefaultTicket(List<salesforce_project__c> spTriggerNew) {
         List<Salesforce_Ticket__c> stList = new list<Salesforce_Ticket__c>();
         for (salesforce_project__c eachSP : spTriggerNew) {
             Salesforce_Ticket__c st  = new Salesforce_Ticket__c();
             st.Subject__c = 'Default st';
             st.Salesforce_Project__c = eachSP.id;
             stList.add(st);
         }
         if (!stList.isEmpty()) {
             insert stList;
         }
    }
    public static void validateSPComplete(List<salesforce_project__c> spTriggerNew, List<salesforce_project__c> spTriggerOld,
   Map<Id, salesforce_project__c> spTriggerNewMap, Map<Id, salesforce_project__c> spTriggerOldMap) {
        set<id> spIds = new set<Id>();
        for (salesforce_project__c eachSP : spTriggerNew) {
            if (eachSP.Status__c == 'Completed' && eachSP.Status__c != spTriggerOldMap.get(eachSP.Id).Status__c) {
                spIds.add(eachSP.Id);
            }
        }

        //get all Not-completed tickets of all comleted project
        List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c
        where Salesforce_Project__c in :spIds and status__c != 'Completed'];

        for (salesforce_ticket__c eachST : listST) {
            Salesforce_Project__c sp = spTriggerNewMap.get(eachst.Salesforce_Project__c);
            sp.Status__c.addError('Cannot complete project because all tickets are not completed. Go away now.');
        }
   }*/
}
