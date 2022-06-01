public class SalesforceProjectTriggerHandler {
    public static void createDefaultSPTicket(List<Salesforce_Project__c> spTriggerNew){
        try{
             List<Salesforce_Ticket__c> listST = new List<Salesforce_Ticket__c>();
 
             for(Salesforce_Project__c sp: spTriggerNew){
                 DefaultTicketInfo__c ticketInfo = DefaultTicketInfo__c.getorgDefaults();
                 Salesforce_Ticket__c st = new Salesforce_Ticket__c();
                 st.Subject__c = ticketInfo.subject__c;
                 st.Description__c = ticketInfo.description__c;
                 st.Salesforce_Project__c = sp.Id;
                 st.Priority__c = 'High';
                 listST.add(st);
             }
     
             if(!listST.isEmpty()){
                 insert listST;
             }
        } catch(Exception ex){
            for (salesforce_project__c sp : spTriggerNew) {
                sp.addError('Error in default ticket creation. Please contact your administrator');
            }
        }
       
    }

    @future
    public static void updateProjectDescription(set<id> setProjectIds) {
        list<salesforce_project__c> listSP =[ select id, description__c from salesforce_project__c where id in : setProjectIds];

        for (salesforce_project__c  sp : listSP ){
            sp.description__c+= ',Update from future!';
            
        }
        system.debug('sp to update = ' + listSP);
        update listSP;
        
    }

    public static void spCompletedStatus(list<salesforce_Project__c> sptriggerNew,
    list<salesforce_Project__c> sptriggerOld,
    map<id, salesforce_Project__c> sptriggerNewMap,
    map<id, salesforce_Project__c> sptriggerOldMap) {
        Set<id> spIds = new Set<id>();
        for (Salesforce_project__c  sp : spTriggernew) {
            if (sp.status__c != sptriggerOldMap.get(sp.id).status__c 
            && sp.status__c == 'Completed') {
                spIds.add(sp.id);
                
            }
            
        }
        if (spIds.isEmpty()) {
            updateTicketStatusCompleted(spIds);
            
        }
        
    }
    @future
   private static void updateTicketStatusCompleted(set<id> spIds) {
       List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c where Salesforce_Project__c in :spIds and status__c != 'Completed'];
       for (salesforce_ticket__c st : listST) {
           st.Status__c = 'Completed';
       }
       if (!listST.isEmpty()) {
           update listST;
       }
   }
}
