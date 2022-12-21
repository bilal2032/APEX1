trigger AccountTrigger on Account (before insert, before update, after insert, after update) {

    if (Trigger.isBefore) {
        AccountTriggerHandler.updateAccountDescription(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        //call method to update VIP fields of all contacts.
        AccountTriggerHandler.updateVIPforContacts(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
    if(Trigger.isBefore && Trigger.isUpdate){
        AccountTriggerHandler.updateContactsMailingCity(trigger.New, trigger.NewMap, trigger.OldMap);
    }           
}

    /*
    list<account> accTriggerNew = trigger.new;
    list<account> accTriggerOld = trigger.old;
    Map<id, account> accTriggerNewMap = trigger.newmap;
    Map<id, account> accTriggerOldMap = trigger.oldmap;

    if(Trigger.isAfter && Trigger.isUpdate){
        set<id> accIds = accTriggerNewMap.keyset();

        integer countWebsite = 0;

        for(id eachid: accIds){
            system.debug('each ID ' + eachid);
            account newAccount = accTriggerNewMap.get(eachId);
            system.debug('new account name is ' + newAccount.Name);
            string newWebsite = newAccount.website;

            account oldAccount = accTriggerOldMap.get(eachId);
            system.debug('old account name is ' + oldAccount.Name);
            string oldWebsite = oldAccount.website;          

            if (newWebsite != oldWebsite) {
                system.debug('Account is ' + newAccount.name + ' new website is ' + newWebsite);
                countWebsite++;                 
            }
        }
        system.debug('# of website updated ' + countWebsite);
    }

    list<account> accTriggerNew = trigger.new;
    list<account> accTriggerOld = trigger.old;
    Map<id, account> accTriggerNewMap = trigger.newmap;
    Map<id, account> accTriggerOldMap = trigger.oldmap;
    
    if(Trigger.isBefore && Trigger.isInsert){
        system.debug('before insert trigger new: '+ accTriggerNew);
        system.debug('before insert trigger old: '+ accTriggerOld);
        system.debug('before insert trigger new map: '+ accTriggerNewMap);
        system.debug('before insert trigger old map: '+ accTriggerOldMap);
    }

    if(Trigger.isAfter && Trigger.isInsert){
        system.debug('after insert trigger new: '+ accTriggerNew);
        system.debug('after insert trigger old: '+ accTriggerOld);
        system.debug('after insert trigger new map: '+ accTriggerNewMap);
        system.debug('after insert trigger old map: '+ accTriggerOldMap);
    }
    if(Trigger.isBefore && Trigger.isUpdate){
        system.debug('before update trigger new: '+ accTriggerNew);
        system.debug('before update trigger old: '+ accTriggerOld);
        system.debug('before update trigger new map: '+ accTriggerNewMap);
        system.debug('before update trigger old map: '+ accTriggerOldMap);
    }

    if(Trigger.isAfter && Trigger.isUpdate){
        system.debug('after updatet trigger new: '+ accTriggerNew);
        system.debug('after update trigger old: '+ accTriggerOld);
        system.debug('after update trigger new map: '+ accTriggerNewMap);
        system.debug('after update trigger old map: '+ accTriggerOldMap);
    }

    if (Trigger.isAfter) {
        list<account> accTriggerNew = trigger.new;

        set<id> accountIds = new set<id>();
        for (account newAcc : accTriggerNew) {
            accountIds.add(newAcc.Id);
              
        }
        system.debug(accountIds);
        
    }

    if (Trigger.isAfter && Trigger.isUpdate) {
        for (account oldAcc : Trigger.old) {
            system.debug('old acc id ' + oldAcc.id + ', old acc name is ' + oldAcc.name);
            
        }
        for (account newAcc : Trigger.new) {
            system.debug('new acc id ' + newAcc.id + ', new acc name is ' + newAcc.name);
            
        }
        
    }

    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before insert trigger.old is ' + trigger.old);        
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('after insert trigger.old is ' + trigger.old);        
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before update trigger.old is ' + trigger.old);        
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('after update trigger.old is ' + trigger.old);        
    }

    
    list<account> accTriggerNew = trigger.new;
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('record in before insert : ' + accTriggerNew);
        system.debug('before # of records inserted : ' + accTriggerNew.size());
        for (account eachAcc: accTriggerNew){
            system.debug('acc id is ' + eachAcc.id + ', acc name is ' + eachAcc.name);
        }        
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('record in after insert : ' + accTriggerNew);
        system.debug('after # of records inserted : ' + accTriggerNew.size());
        for (account eachAcc: accTriggerNew){
            system.debug('acc id is ' + eachAcc.id + ', acc name is ' + eachAcc.name);
        }        
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('record in before update : ' + accTriggerNew);
        system.debug('before # of records updated : ' + accTriggerNew.size());
        for (account eachAcc: accTriggerNew){
            system.debug('acc id is ' + eachAcc.id + ', acc name is ' + eachAcc.name);
        }        
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('record in after update : ' + accTriggerNew);
        system.debug('after # of records updated : ' + accTriggerNew.size());
        for (account eachAcc: accTriggerNew){
            system.debug('acc id is ' + eachAcc.id + ', acc name is ' + eachAcc.name);
        }        
    }

    
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('account before insert trigger called when it is inserted');    
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('account after insert trigger called when it is inserted');        
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('account before update trigger called when it is updated');    
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('account after update trigger called when it is updated');        
    }
    
    
    
    if (Trigger.isBefore) {
        system.debug('account before insert trigger called');
        
    }
    if (Trigger.isAfter) {
        system.debug('account after insert trigger called');
        
    }
    */
