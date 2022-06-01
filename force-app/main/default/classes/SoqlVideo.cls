public class SoqlVideo {
    public static void allContacts() {
        List<Contact> listOfContact = [select name, phone from contact];

        system.debug(listOfContact);
        
    }
    public static void latestContactOnly() {
        contact latestCnt = [select name, email from contact order by createdDate desc limit 1];
        system.debug('latest created contact is ' + latestCnt);
        system.debug('latest contact name is ' + latestCnt.name);
        system.debug ('latest created contact email is ' + latestCnt.email);
    }
    
    public static void contactWithEmail() {
        list<contact> listEmailContacts = [select id, name, email from contact where email != null];
        system.debug(listEmailContacts.size());
        for (contact eachCnt : listEmailContacts) {
            system.debug('cocntact name is' + eachCnt.name.toUpperCase() + 'and its email is ' + eachCnt.email.toUpperCase());
            system.debug('---------------------');
        }
        
    }
    
}
