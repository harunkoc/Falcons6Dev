trigger LeadTrigger on Lead (before insert, before update, after insert, after update) {

    if (trigger.isBefore && trigger.isInsert) {
        for (lead eachLd  : trigger.new) {
            // system.debug (Id.LastName + 'lead name is created successfully');

            if (eachLd.leadSource == 'Web') {
                system.debug(eachLd.Rating + 'Rating should be Cold');
                
            } else {
                system.debug('Rating should be hot');
                
            }
            
        }
        
    }



}