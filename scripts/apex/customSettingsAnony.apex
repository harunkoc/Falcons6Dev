map<string, country_code__c> mapCC = country_code__c.getall();
system.debug('Map of country code = ' + mapCC);
for (string eachCountry  : mapCC.keyset()) {
    system.debug('Counttry = ' + eachCountry + ' , ' + mapCC.get(eachCountry).country_code__c);
    
}