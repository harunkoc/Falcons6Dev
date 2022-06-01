public  class DmlDemo {
    public static void dmlInsertDemo_stndObj(){

        account acc = new account();
        acc.name = 'Softinnovas';
        acc.site = 'www.Softinnovas.com';
        acc.Description = ' Salasforce Bootcamp';

        insert acc;
        system.debug(acc);
        
    }

    public static void dmlInsertDemo_cstmObj() {
        salesforce_project__c sp = new salesforce_project__c();
        sp.project_name__c = 'teach DML to falcons';
        sp.description__c = 'All 40% are great learners';
        insert sp;
        system.debug(sp);
        
    }

    public static void dmlUpdateDemo_1() {
        account acc = new account();
        acc.name = 'S';
        insert acc;
        system.debug('inserted ' + acc);
        acc.name = 'Softinnovas Inc.';
        update acc;
        system.debug('updated ' + acc);
        
    }

    public static void dmlUpdateDemo_3() {
        account acc = [select id, name from account where name = 'SoftInnovas' order by createddate desc limit 1];
        acc.name = 'SoftInnovas Inc.';

        update acc;
        system.debug ('Updated acc ' + acc);
        
    }

    public static void dmlUpdateDemo_2() {
        account acc = [select id, name from account where name ='Softinnovas Inc.' limit 1];
         contact cnt = new contact();
         cnt.lastname = 'Biden';

         cnt.AccountId = acc.id;
          insert cnt;
          system.debug(cnt);
        
    }
    // public static void dmlUpdateDemo_2_CO() {
    //     slaeforce_project__c sp = [select id, name from salesforce_project__c order by createddate desc limit 1];
    //     salesforce_ticket__c st = new salesforce_ticket__c();
    //     st.subject
        
    // }
    public static void dmlMultipleRecordInsert_right() {
        List<account> listAcc = new List<account>();
        account acc1 = new account();
        acc1.name = 'Bulk acc 1';
        listAcc.add(acc1);

        account acc2 = new account();
        acc2.name = 'Bulk acc 2';
        listAcc.add(acc2);

        account acc3 = new account();
        acc3.name = 'Bulk acc 3';
        listAcc.add(acc3);

        insert listAcc;
        
    }
    public static void dmlMultipleRecordInsert2_right() {
        List<account> listAcc = new List<account>();
        account acc = new account();
        acc.Name = 'SoftInnovas-29Apr v0';
        acc.AccountNumber = 'ACSI-1';
        acc.Active__c = 'Yes';
        system.debug('before saving acc = ' + acc);
        listAcc.add(acc);

        for (Integer i = 1; i <150; i++){
            account acc2 = new account();
        acc2.Name = 'SoftInnovas-29Apr v0 ' + i;
        acc2.AccountNumber = 'ACSI-1 ' + i;
        acc2.Active__c = 'Yes';
        system.debug('before saving acc2 = ' + acc2);
        listAcc.add(acc2);


      
        }
        system.debug('size of list '+ listAcc.size());
        if(!listAcc.isEmpty()){
            insert listAcc;
    }
}
}