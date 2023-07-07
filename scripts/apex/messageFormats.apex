//JSON: Java Script Object Notation

{
    "Name" : "Bilal",
    "Age" : 45,
    "Title" : "Developer",
    "Salary" : 15200.30
}

// students detail in JSON format
[
    {
        "Name" : "Bilal",
        "Age" : 45,
        "Title" : "Developer",
        "Salary" : 15200.30
    },
    {
        "Name" : "Bill",
        "Age" : 53,
        "Title" : "Architect",
        "Salary" : 22600.50
    }
]

//Get an Account recort and convert the same into JSON format
Account acc = [Select Name, Type, Industry, AnnualRevenue FROM Account WHERE AnnualRevenue != null limit 1];
String jsonString = JSON.serialize(acc);
System.debug(jsonString);

List<Contact> cntList = [Select Name, Phone, Email, Department FROM Contact WHERE Email != null limit 4];
String jsonCnt = JSON.serialize(cntList);
System.debug(jsonCnt);

List<Account> accList = [SELECT Name, Type, Industry, AnnualRevenue 
                        FROM Account 
                        WHERE AnnualRevenue != null 
                        AND Type != null 
                        AND Industry != null 
                        LIMIT 4];
                        String jsonAccList = JSON.serialize(accList);

List<Case> cs = [Select CaseNumber, Origin, ContactPhone from Case where origin !=null limit 3];
String jsonCase = JSON.serialize(cs);
System.debug(jsonCase);


//Callouts Test
restcallouts.getAnimals();
restcallouts.getAirlines();
restcallouts.getEmployees();
restcallouts.getCasesUsingNC();
restcallouts.postAnimal();

RestCalloutsBO.getAnimals();

NonNamedEmployees.deleteNonNamedEmployees();

SoapCallouts.parksCallout('United States');
SoapCallouts.doAddCallout(23, 4);
SoapCallouts.doMultiplyCallout(25, 4);

<?xml version="1.0" encoding="UTF-8"?>
    <env:Envelope xmlns:env="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"><env:Header />
        <env:Body>
        <m:byCountry xmlns:m="http://parks.services/"><arg0>United States</arg0></m:byCountry></env:Body></env:Envelope>

RestCalloutsPractice.getCovidInfo();
RestCalloutsPractice.posts();




