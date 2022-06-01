trigger OpportunityTrigger on Opportunity (before insert, before update, after insert, after update ) {

    if (trigger.isBefore && trigger.isUpdate) {
        
        for (opportunity eachOpp : trigger.new) {
           system.debug ('New opportunity name ' + eachOpp.name + 'new amount ' + eachOpp.Amount);
           system.debug('Old opportunity name ' + trigger.oldMap.get(eachopp.Id).Name + 'old opportunity mount ' + trigger.oldMap.get(eachOpp.Id).Amount);
            
        }
    }

}