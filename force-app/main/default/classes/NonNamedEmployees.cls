public class NonNamedEmployees {
    public static void deleteNonNamedEmployees() {
        List<Employee__c> empList = [Select Name, Employee_Name__c from Employee__c where Employee_Name__c = ''];
        if(!empList.isEmpty()){
            delete empList;
        }        
    }
}