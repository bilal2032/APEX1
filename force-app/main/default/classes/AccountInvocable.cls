public with sharing class AccountInvocable {
    @InvocableMethod(label='Close Opportunities'
    description = 'This method is going to update the stagename of all open opportunities under the given account to close lost'
    category = 'Account')
    public static void closeOpportunities(List<Id> accountIds) {
        //quary to get all the opps under the given accounts
        List<Opportunity> opps = [Select Id, StageName from Opportunity WHERE AccountId IN : accountIds AND StageName NOT IN ('Closed Won', 'CLosed Lost')];

        for(Opportunity opp : opps){
            opp.StageName = 'Closed Lost';
        }
        if(!opps.isEmpty()){
            try{
                update opps;
            } catch(Exception e){
                //crete a log
            }
        }        
    }
}