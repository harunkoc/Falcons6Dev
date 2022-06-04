string jsonStringAcc = '{"name" : "JsonToApex", "Type" : "Prospect", "AnnualRevenue":50}';
Account acc = (Account) Json.deserialize(jsonStringAcc, account.class);
insert acc;

string jsonStringAcc2 ='[{"name" : "JsonToApex2", "Type" : "Prospect", "AnnualRevenue":50000000}]';

list<account> listacc = (list<Account>) Json.deserialize(jsonStringAcc2, list<account>.class);

insert listacc;