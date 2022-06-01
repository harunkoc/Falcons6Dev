trigger AccountTrigger on Account (before insert, before update, after insert, after update) {

    if (trigger.isAfter && trigger.isUpdate) {
        AccountTriggerHandler.updateVIPForAllContacts(Trigger.New, Trigger.Old, Trigger.newMap, Trigger.OldMap);
        
        
    }

    if(trigger.isBefore){
        system.debug('before insert/update trigger called');
        AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        
    }


    // if (trigger.isAfter && trigger.isUpdate) {
    //     system.debug('After update trigger of account object.');

    //     Map<Id,account> newAccMap = trigger.newMap;
    //     Map<Id,account> oldAccMap = trigger.oldMap;

    //     Set<Id> setOfAccIds= NewAccMap.keySet();
    //     integer countWebsiteUpdated = 0;

    //     for (id eachId: setOfAccIds) {

    //         account oldAcc = oldAccMap.get(eachId);
    //         string oldwebsite = oldAcc.Website;

    //         account newAcc = newAccMap.get(eachId);
    //         string newWebsite = newAcc.Website;

    //         if (oldWebsite != newWebsite) {
    //             system.debug('for account ' + newAcc.Name + ' , new WEBSITE is ' + newWebsite);
    //             countWebsiteUpdated++;
                
    //         }

            
    //     }

    //    system.debug ('# of account website updated = ' + countWebsiteUpdated);
        
    // }






    // if (trigger.isAfter && trigger.isUpdate) {
    //     system.debug('After update trigger of account object.');
    //     Map<Id,account> accNewMap = trigger.newMap;
    //     Map<Id,account> accOldMap = trigger.oldMap;
    //     Set<Id> setOfAccIds= accNewMap.keySet();
        
    //     for (Id eachId : setOfAccIds) {
    //         system.debug('=============');
    //         system.debug('each id ' + eachId);

    //         account newAccount = AccNewMap.get(eachId);
    //         system.debug('New account name = ' + newAccount.Name);

    //         account oldAccount = AccOldmap.get(eachid);
    //         system.debug('Old account name = ' + oldAccount.Name);
            
    //     }
        
    // }



    // Map<Id,account> trgNewMap = trigger.newMap;
    // Map<Id,account> trgOldMap = trigger.oldMap;

    // if (trigger.isBefore && trigger.isInsert) {
    //     system.debug ('==============BEFORE INSERT==========');
    //     system.debug('Before insert OLd map = ' + trgOldMap );
    //     system.debug('before insert new map = ' + trgNewMap );    
    // }


    // if (trigger.isAfter && trigger.isInsert) {
    //     system.debug ('==============AFTER INSERT==========');
    //     system.debug('After insert OLd map = ' + trgOldMap );
    //     system.debug('After insert new map = ' + trgNewMap );    
    // }

    // if (trigger.isBefore && trigger.isUpdate) {
    //     system.debug ('==============BEFORE UPDATE==========');
    //     system.debug('Before update OLd map = ' + trgOldMap );
    //     system.debug('before update new map = ' + trgNewMap );    
    // }

    // if (trigger.isAfter && trigger.isUpdate) {
    //     system.debug ('==============AFTER UPDATE==========');
    //     system.debug('After update OLd map = ' + trgOldMap );
    //     system.debug('After update new map = ' + trgNewMap );    
    // }






    // if (trigger.isAfter){
    //     system.debug('After trigger of account object.');
    //     List<account> newAcc= trigger.new;
    //     system.debug('size trigger.new in after trigger is ' + trigger.new.size());
    //     set<Id>accIdSet = new set<Id>();
    //     for (account acc : newAcc) {
    //         accIdset.add(acc.id);
            
    //     }
    // }


    // if(trigger.isAfter){
    //     if(trigger.isUpdate){
    //         List<account> oldAccounts = trigger.old;
    //         List<account> newAccounts = trigger.new;

    //         for(account oldAcc: oldaccounts){
    //             system.debug('old acc.id = ' + oldAcc.id + ', old acc name = ' + oldAcc.Name);
    //         }
    //         for(account newAcc: newaccounts){
    //             system.debug('new acc.id = ' + newAcc.id + ', new acc name = ' + newAcc.Name);
    //         }
    //     }
    // }

    // if (trigger.isBefore && trigger.isInsert){
    //         system.debug('trigger.old before insert = ' + trigger.old);
    
    //     }
       
    //     if (trigger.isAfter && trigger.isInsert) {
    //         system.debug('trigger.old after insert = ' + trigger.old);
        
    //     }

    //     if (trigger.isBefore && trigger.isUpdate){
    //         system.debug('trigger.old before update = ' + trigger.old);
    
    //     }
       
    //     if (trigger.isAfter && trigger.isUpdate) {
    //         system.debug('trigger.old after update = ' + trigger.old);
    //     }



    // if(trigger.isBefore && trigger.isUpdate){
    //     system.debug('trigger.new before update = ' + trigger.new);
    //     list<account> newAccounts = trigger.new;
    //     for (account acc :  newAccounts) {
    //         system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
    //     }
    // }
    // if (trigger.isAfter && trigger.isUpdate) {
    //     //trigger.new -> record(s) which were responsible for firing the trigger
    //     system.debug('trigger.new after update = ' + trigger.new);
    //     for (account acc :  trigger.new) {
    //         system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
    //     }
    // }
    
    // if (trigger.isBefore && trigger.isInsert){
    //     system.debug('trigger.new before insert = ' + trigger.new);

    // }
   
    // if (trigger.isAfter && trigger.isInsert) {
    //     system.debug('trigger.new after insert = ' + trigger.new);

        // list<account> newAccounts = trigger.new;

        // system.debug('total number of account inserted = ' + newAccounts.size());

        // for (account acc : newAccounts) {
        //     system.debug('account Id is ' + acc.id + 'account name is ' + acc.Name);
            
        // }

        
    // }

    // if (trigger.isAfter) {
    //     system.debug('Trigger.new after insert/update = ' + trigger.new);
        
    // }

    

    // if (trigger.isBefore && trigger.isInsert) {
    //     system.debug('before insert trigger is called');
 
    // }

    // if (trigger.isAfter && trigger.isInsert) {

    //     system.debug('after update trigger is called');

        
    // }

    // if (trigger.isBefore && trigger.isUpdate) {
    //     system.debug('before insert trigger is called');
 
    // }

    // if (trigger.isAfter && trigger.isUpdate) {

    //     system.debug('after update trigger is called');

        
    // }

    // system.debug('Before insert account trigger fired');

    // system.debug('before insert trigger is called');
    // system.debug('before update trigger is called');

    // if (trigger.isInsert) {
    //     system.debug('before insert trigger is called');
        
    // }
    // if (trigger.isUpdate) {
    //     system.debug('before update trigger is called');
        
    // }




    // system.debug ('triger.isbefore = ' + trigger.isBefore);
    // system.debug('trigger.isAfter = ' + trigger.isAfter);
    
    // if (trigger.isBefore){
    // system.debug('before insert account trigger fired');
    // }
    // if (trigger.isAfter) {
    // system.debug('After insert trigger called');

    // }

    // system.debug('----------------');

      // if (Trigger.isbefore) {
    //     system.debug('Before insert/update trigger on account object');
    //     for (account eachAcc : trigger.new) {
    //         if (trigger.isInsert && eachAcc.active__c == 'Yes') {
    //             eachAcc.Description = 'Account is now active. Enjoy!';
                
    //         }
    //         if (trigger.isUpdate) {
    //             if (eachAcc.active__c == 'Yes' && trigger.oldMap.get(eachAcc.id).active__c != trigger.newmap.get(eachAcc.id).active__c) {

    //                 eachAcc.Description = 'Account is now active. Enjoy!';
                    
    //             }
                
    //         }
            
    //     }
        
    // }

    
}