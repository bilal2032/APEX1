Map<string, Country_Code__c> allCountryCode = Country_Code__c.getAll();
system.debug('all country code ---> ' + allCountryCode);

for(string eachCountry : allCountryCode.keySet()){
    System.debug('country name is ' + eachCountry + ', its code is ' + allCountryCode.get(eachCountry).code__c);
}

