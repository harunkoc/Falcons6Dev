Dmldemo2.dmlMultiplerecordUpdate_Right();

delete [select id from account order by createddate desc limit 20];

list<account> listacc = [select id from account order by createddate desc limit 20];
delete listacc;


List<Account> listAcc = [select id, name, website from account order by CreatedDate limit 10];
    
       list<account> updateAccounts = new list<account>();

        integer counter = 0;
       for (account acc : listAcc) {
           
           if(counter < 5){
                acc.Website = 'newwebsite.com';
           } else {
               acc.name = acc.name + ' v2';
           }
           
           updateAccounts.add(acc);
           counter++;
       }
       if(!updateAccounts.isEmpty()){
           update updateAccounts;
       }
