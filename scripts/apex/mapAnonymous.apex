map<string, string> mapCnCurrency = new map<string, string>();
mapCnCurrency.put('USA', 'Dollar');
mapCnCurrency.put('Japon', 'Yen');
mapCnCurrency.put('France', 'Euro');
mapCnCurrency.put('Germany', 'Euro');
mapCnCurrency.put('Turkey', 'Lira');
mapCnCurrency.put('India', 'Rupees');
mapCnCurrency.put('India', 'Rupee');
mapCnCurrency.put('El Salvador', 'Bitcoin');
system.debug('map of country and currencies ' + mapCnCurrency);

map<string, list<string>> familyMembers = new map<string, list<string>>();
list<string> OzturkFamily = new list<string>();
OzturkFamily.add('Bilal');
OzturkFamily.add('Dilek');
OzturkFamily.add('Enes');
OzturkFamily.add('Melek');
OzturkFamily.add('Elif');

familyMembers.put('Ozturk', OzturkFamily);
system.debug(familyMembers);

string IndiaCurrency = mapCnCurrency.get('India');
string TurkeyCurrency = mapCnCurrency.get('Turkey');

system.debug('India Currency = ' + IndiaCurrency);
system.debug('Turkey Currency = ' + TurkeyCurrency);

string country = 'Japon';
string countryCurrency = mapCnCurrency.get(country);
system.debug(country + ' currency is ' + countryCurrency);

set<string> countrySet = mapCnCurrency.keySet();
system.debug('Set of countries is '+ countrySet);

list<string> currencyList = mapCnCurrency.values();
system.debug('currency list is ' + currencyList);

set<string> countriesSet = mapCnCurrency.keySet();
for(string eachKey: countriesSet){

    system.debug('The country is ' + eachKey);
    string eachCurrency = mapCnCurrency.get(eachKey);
    system.debug('Its currency is ' + eachCurrency);
    system.debug('----> country is ' + eachKey + ', its currency is ' + eachCurrency);
}