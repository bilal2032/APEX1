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

List<Case> cs = [Select CaseNumber, Origin, ContactPhone from Case where origin !=null limit 3];
String jsonCase = JSON.serialize(cs);
System.debug(jsonCase);


//Callouts Test
restcallouts.getAnimals();
restcallouts.getAirlines();
restcallouts.getEmployees();
restcallouts.getCasesUsingNC();
restcallouts.postAnimal();

NonNamedEmployees.deleteNonNamedEmployees();




