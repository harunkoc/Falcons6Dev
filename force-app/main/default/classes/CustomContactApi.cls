@RestResource(urlMapping ='/ContactCustom/*')
global class CustomContactApi {
    @httpGet
    Global static contact getContactId(){
        system.debug('Custom contact api call success.');
        RestRequest request = restContext.request;
        string uri = request.requestURI;
        system.debug('URI : ' + request.requestURI);
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('idStartIndex: ' + idStartIndex);
        string contactId = uri.substring(idStartIndex);
        system.debug('contactid: ' + contactId);
        contact c = [
            select name, email, phone, account.name from contact where id = :contactId
        ];
        return c;
    }
    
    @Httppost
    global static id createContact(string fName, string lName, string emailId, string phoneNumber, string accountId) {
        contact c = new contact();
        c.FirstName =fName;
        c.LastName = lName;
        c.Email = emailId;
        c.Phone =phoneNumber;
        c.AccountId = accountId;
        insert c;
        return c.id;
        
        
    }
    @httpdelete
    Global static string deleteContact(){
        system.debug('Custom contact api call success.');
        RestRequest request = restContext.request;
        string uri = request.requestURI;
        system.debug('URI : ' + request.requestURI);
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('idStartIndex: ' + idStartIndex);
        string contactId = uri.substring(idStartIndex);
        system.debug('contactid: ' + contactId);
        contact c = new contact(id=contactId);
        delete c;
        return 'contact deleted with id: ' + contactId;
    }
}
