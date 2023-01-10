trigger OpportunityTrigger on Opportunity (before insert, after insert, before update, after update, after delete, after undelete) {
/*
    Set<id> accIds = new Set<id>();
    
    if (trigger.isAfter) {
        //Bu yapilan Dml isleminden etkilenen accountlarin idlerini bir set yapida olusturalim..
        
        if (trigger.isInsert || trigger.isUndelete) {
            for (opportunity op : trigger.new) {
                if (op.AccountId != null && op.Amount != null) {
                    accIds.add(op.AccountId);
                }
            }
        }   

        if (trigger.isUpdate) {
            for (Opportunity opp : trigger.new) {
                if (opp.AccountId != trigger.oldMap.get(opp.id).AccountId || opp.StageName != trigger.oldMap.get(opp.id).StageName || opp.Amount !=trigger.oldMap.get(opp.id).Amount) {
                    accIds.add(opp.AccountId);
                    
                }
            }
        }

        if (trigger.isDelete) {
            for (opportunity op1 : trigger.old) {
                if (op1.AccountId != null && op1.Amount != null) {
                    accIds.add(op1.AccountId);
                }
            }
         }
    }

        if(!accIds.isEmpty()){
            OpportunityTriggerHandler.updateHighestAmount(accIds);
        }*/

}   