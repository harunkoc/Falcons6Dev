public class SoqlDemo {
  public static void accountSoql_1() {
      List<Account> listAcc = [Select ID, Name from Account Where name like '%A%'];

      system.debug ('Account list = ' + listAcc);
      system.debug('# of account = ' +listAcc.size());
      
      Account acc = [Select  Name, website from Account order by createddate desc limit 1];
      system.debug(acc);
  
  }

  public static void accountSoql_2() {
    Account acc = [Select  Name, website, Phone from Account order by createddate desc limit 1];
    system.debug('latest account created is ' + acc);

    string accName = acc.Name;
    string accPhone = acc.Phone;

    system.debug('acc name is ' + accName);
    system.debug (' acc phone is ' + accPhone);
    system.debug('acc account number is ' + acc.AccountNumber);

  }

  public static void accountSoql_3() {
      List<Account> listAcc = [select id, name, phone, accountnumber from account order by createddate desc];
      system.debug ('all accounts ' + listAcc);

      for (account eachAccount : listAcc) {
          id accid = eachAccount.id;
          string accName =eachAccount.Name;
          string accPhone = eachAccount.Phone;
          system.debug('acc name is ' + accName);
          system.debug (' acc phone is ' + accPhone);
          system.debug('acc account number is ' + eachAccount.AccountNumber);

          system.debug('----------------------------');
          
      }

      
  }

  public static void accountSoql_filter() {

    string accNameFilter = 'Salesforce';
    list <account> ListAcc = [Select id, name from account where name = :accNameFilter];
    system.debug(listAcc);
    
      
  }
}

