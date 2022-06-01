trigger salesforceTrigger on Salesforce_Project__c(before insert, after insert, after update) {
    if (trigger.isAfter&&trigger.isInsert) {
        system.debug('Trigger called');
        SalesforceProjectTriggerHandler.updateProjectDescription(trigger.newmap.keyset());
        system.debug('Future method called already');
        SalesforceProjectTriggerHandler.CreateDefaultSPTicket(Trigger.New);
        
    }

    if (trigger.isAfter && trigger.isUpdate) {
        SalesforceProjectTriggerHandler.spCompletedStatus(trigger.New, trigger.Old, trigger.NewMap, trigger.OldMap);
        
    }

}