public with sharing class AccountQueueableExample implements Queueable {
    public list<Account> listAccount;
        public AccountQueueableExample (list<account> acclist){
            listAccount = accList;

        }
        public void execute (QueueableContext qc){
            for (account  a : listAccount) {
                a.name = a.name + '--SI';
                
            }
            update listAccount;
        }

    }

