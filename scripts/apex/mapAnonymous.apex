map <string, string> mapCurrency = new map<string,string> ();
mapCurrency.put('USA', 'Dollar');
mapCurrency.put('Japon', 'Yen');
mapCurrency.put('France', 'Euro');
mapCurrency.put('India', 'Rupees');
mapCurrency.put('India', 'Rupee');
mapCurrency.put('Turkiye', 'Lira');

system.debug(mapCurrency);

string IndiaCurrency = mapCurrency.get('India');
String TurkeyCurrency = mapCurrency.get('Turkiye');

system.debug('India currency = ' + IndiaCurrency );
System.debug('Turkiye currency = ' + TurkeyCurrency);

string country = 'Turkiye';
system.debug ('Country is '+ country);
string TurkiyeCurrency = mapCurrency.get(country);
system.debug(TurkeyCurrency);


set<string>countrySet =mapCurrency.keySet();
system.debug ('countries in map = ' + countrySet);

list <string> currencyList = mapCurrency.values();
system.debug ('Currencies in map' + currencyList);




for (string eachkey: countrySet){
    string eachCurrency = mapCurrency.get(eachkey);
    string printString = 'country is ' + eachkey + ', its currency is ' + eachCurrency;
    system.debug(printString);
}