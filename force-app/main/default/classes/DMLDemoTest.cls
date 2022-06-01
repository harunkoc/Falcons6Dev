@isTest
public class DMLDemoTest {
    @isTest
    public static void DmlDemotest1() {
        DmlDemo.dmlInsertDemo_stndObj();
        List<Account> listAcc = [select id, name from account];
        system.assertEquals(1,listAcc.size());
        system.assertEquals('Softinnovas', listAcc[0].Name);


        
    }

    @isTest
    public static void dmlDemoupdate2Test() {
        account acc = new Account();
        acc.name = 'Softinnovas Inc.';
        insert acc;

        DmlDemo.dmlUpdateDemo_2();

        List<contact> listCnt = [select id, lastname from contact];
        system.assertEquals(1,listCnt.size());
        system.assertEquals('Biden', listCnt[0].LastName);
        
    }
  
}
