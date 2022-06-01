@isTest
public class SOQLDemo2Test {
    @testSetup
    public static void setUpData() {
        account acc1 = new Account();
        acc1.name= 'SI test';
        acc1.Industry= 'Energy';

        account acc2 = new account();
        acc2.name= 'UI test';
        acc2.Industry= 'Energy';

        account acc3 = new account();
        acc3.name= 'PI test';
        acc3.Industry= 'Banking';

        List<account> listAcc = new List<account>{acc1,acc2,acc3};

        insert listAcc;

        List<contact> listContact = new List<contact>();
        for (Integer i = 0; i < 300; i++) {
            contact c = new Contact();
            c.LastName = 'Test SOQL';
            if (i<100) {
                c.AccountId = acc1.Id;
                
            }else if(i<200) {
                c.AccountId = acc2.Id;
                
            }else if (i<300){
                c.AccountId = acc3.Id;
            }
            listContact.add(c);
        }
        insert listContact;
        
    }
    @isTest
    public static void testMethod1() {
        
          test.startTest();
          SOQLDemo2.childtoParent_Soql1();
          test.stopTest();
    }

    @isTest
    private static void sampleSoql4TEST() {
        list<account> listAccounts = [select id, name, type from account];
        for (account acc : listAccounts) {
            acc.type = 'Customer - Direct';
        }
        update listAccounts;

        List<Opportunity> createOpps = new List<Opportunity>();
        for (Integer i = 0; i < 300; i++) {
            Opportunity o = new Opportunity();
            o.Name = 'opp1';
            o.StageName = 'Closed Lost';
            o.CloseDate = date.today();
            if(i < 100){
                o.AccountId = listAccounts[0].id;
            }
            else if(i< 200){
                o.AccountId =  listAccounts[1].id;
            }
            else if(i< 300){
                o.AccountId =  listAccounts[2].id;
            }
            createOpps.add(o);
        }
        insert createOpps;

        Test.startTest();
        SoqlDemo2.sampleSoql4();
        Test.stopTest();
    }
}

    

