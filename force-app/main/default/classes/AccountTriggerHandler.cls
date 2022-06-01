public class AccountTriggerHandler {
  
    public static void updateAccountDescription(List<account> accTriggerNew,
                                                List<account> accTriggerOld,
                                                Map<id, account> accTriggerNewMap,
                                                Map<id, account> accTriggerOldMap){
         for(account eachAcc: accTriggerNew){
            boolean updateDesc = false;
            if(accTriggerOldMap == null && eachAcc.Active__c == 'Yes'){
                updateDesc = true;
            }
            if(accTriggerOldMap != null){
                Account oldAccount = accTriggerOldMap.get(eachAcc.ID);
                
                string oldAccountActive = oldAccount.Active__c;
                //check if active is updated
                //active is changed to 'Yes'
                if(eachAcc.Active__c == 'Yes' &&
                    oldAccountActive != 'Yes'
                ) {
                    updateDesc = true;
                }
            }
            if(updateDesc){
                eachAcc.Description = 'Account is now active. Enjoy!';
            }
        }
    }

    public static void updateVIPForAllContacts(List<account> accTriggerNew,List<account> accTriggerOld,Map<id, account> accTriggerNewMap,Map<id, account> accTriggerOldMap){
      
        system.debug('update all contacts VIP fields');
        Set<id> setAccIds = new Set<id>();
        for (account eachAcc: accTriggerNew) {
            if (eachAcc.VIP__c != accTriggerOldMap.get(eachAcc.id).VIP__c) {
                setAccIDs.add(eachAcc.Id);
                
            }
            
        }
        List<contact> listContacts =[select id, name, account.id,vip__c from contact where account.id in: setAccIds];

        for (contact eachContact : listContacts) {
            boolean accVIP = accTriggerNewMap.get(eachContact.Account.Id).VIP__c;
            eachContact.VIP__c = accVIP;
            
        }
        if (!listContacts.isEmpty()) {
            update listContacts;
            
        }
    }
}










