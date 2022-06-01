public  class Dmldemo2 {

    public static void dmlMultiplerecordUpdate_Right() {
        List<account> listAcc = [select id, name, description from account order by createddate desc limit 150];
        list<account> updateAccount = new list<account>();

        for (account acc : listAcc) {

            acc.name += 'vB';
            acc.Description = 'Update via bulk DML';
            updateAccount.add(acc);
            
        }
        if (!updateAccount.isEmpty()) {
            update updateAccount;
            
        }
        
    }
    
}
