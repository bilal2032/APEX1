public class OpportunityTriggerHandler {
    @future
    public static void updateHighestAmount(set<id> stIds){

        list<account> listAcc =[Select id, name, Highest_Amount_Opportunity_Name__c,(Select id, name, AccountId from opportunities where amount != null order by amount desc) from account where id in :stIds];

        for (account  acc : listAcc) {
           if(acc.Opportunities.size()>0){
             acc.Highest_Amount_Opportunity_Name__c=acc.opportunities[0].name;
           } else{
            acc.Highest_Amount_Opportunity_Name__c = null;

        }
        update listAcc;
            
        }
  } 

}
