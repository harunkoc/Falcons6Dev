account a = new account();
a.Name = 'Mona';
a.Phone = '';
a.AnnualRevenue = 90909854;

account b = new account();
b.name ='Lisa';
b.phone = '9494949449';
b.Site = '';

list<account> ab = new list<account>{a,b};
string accountJSON1 =JSON.serialize(ab);
system.debug(accountJSON1);


list<account> listAccount = [select id, name, phone,site, annualrevenue from account limit 5];
string accountJSON22 = Json.serialize(listAccount);
system.debug(accountJSON22);