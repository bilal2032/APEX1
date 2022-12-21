public with sharing class SalesforceTicketStatusUpdate {
    @invocableMethod
    public static void updateSalesforceTicketStatus(List<id> spIDs) {
        List<Salesforce_Ticket__c> listST = [Select id, Status__c, Salesforce_Project__c from Salesforce_Ticket__c where  salesforce_project__c in :spIDs];

        for(Salesforce_Ticket__c eachST : listST){
            eachST.Status__c = 'Completed';
        }
        update listST;
        
    }

}
