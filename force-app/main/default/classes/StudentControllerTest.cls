@isTest
public with sharing class StudentControllerTest {

    @isTest
    public static void studentTest() {
        List<Student__c> listStu = new List<Student__c>();
        for(Integer i=0; i<3; i++){
            Student__c st = new Student__c();
            st.Student_Name__c = 'Bobby Kremer '+i;
            st.Postal_Code__c = '74256';
            st.Class__c = 11;
            st.City__c = 'Fort Worth';
            listStu.add(st);
        }
        if(!listStu.isEmpty()){
            insert listStu;
        }

        Test.startTest();
        List<Student__c> stuList = StudentController.searchStudentsByPostalCode('74256');

        System.assert(true, stuList.size() != 0);
        System.assertEquals('74256', stuList[0].Postal_Code__c, 'Checks the Postal code');
        Test.stopTest();
        
    }

}