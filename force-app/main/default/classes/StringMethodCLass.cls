public class StringMethodCLass {
    public void stringMethod1(){
        string sessionDescription = 'learning string methads in apex language';
        system.debug(sessionDescription);

        integer lengthOfStr = sessionDescription.length();
        system.debug('The length of the sgtring is ' + lengthOfStr);

        string capsSessionDesc = sessionDescription.toUpperCase();
        system.debug('in capitals ---> ' + capsSessionDesc);

        boolean containApex = sessionDescription.contains('apex');
        system.debug('contain apex? ' + containApex);

        string sf = 'salesforce';
        boolean containSalesForce = sessionDescription.contains('salesforce');
        boolean containsSF = sessionDescription.contains(sf); 
        system.debug('contain salesforce? ' + containSalesForce);
        system.debug('contain salesforce? ' + containsSF);

        boolean containApex2 = sessionDescription.contains('Apex');
        system.debug('contain Apex? ' + containApex2);

        boolean containApex3 = sessionDescription.containsIgnoreCase('Apex');
        system.debug('contain Apex? ' + containApex3);
    }
    
}
