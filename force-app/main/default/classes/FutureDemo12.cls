public class FutureDemo12 {
    public static void updateDescriptionHelper(List<account> accTriggerNew, Map<Id,Account> accTriggerOldMap) {

        Set<Id> accIDs = new Set<Id>();

        for (account ac : accTriggerNew) {
            if(ac.Description != accTriggerOldMap.get(ac.Id).Description){
                accIds.add(ac.id);
            }            
        }
        if(!accIDs.isEmpty()){
            updateDescription(accIDs);
        }        
    }
    @future
    public static void UpdateDescription(Set<Id> idList) {
        List<Account> accList = [Select id, name, description, (select id, description from Contacts), (select id, description from Opportunities) from account where id in : idList];

        List<Contact> conList = new List<Contact>();
        List<Opportunity> oppList = new List<Opportunity>();

        for (Account ac : accList) {
            for (Contact c : ac.Contacts) {
                c.Description = ac.Description;
                conList.add(c);                
            }
            for (Opportunity op : ac.Opportunities) {
                op.Description = ac.Description;
                oppList.add(op);                
            }            
        }
        update conList;        
        update oppList;        
    }

}
