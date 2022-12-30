@isTest
public class CaseAssignmentTest {
    @isTest
    private static void caseInsertTest() {
        test.startTest();
        CaseAssignment.caseInsert();
        test.stopTest();
        List<Case> cs = [Select id, origin, subject from case where subject = 'Testcase'];
        system.assertEquals(1, cs.size());
        system.assertEquals('Testcase', cs[0].subject);        
    }
    @isTest
    private static void caseUpdateTest() {
        case cs = new case();
        cs.subject = 'Testcase';
        insert cs;

        test.startTest();
        CaseAssignment.caseUpdate();
        test.stopTest();

        List<case> cs1 = [Select id, subject from case where subject = 'Testing case 1'];
        system.assertEquals('Testing case 1', cs1[0].subject);        
    }
    @isTest
    private static void caseDeleteTest() {
        case cs2 = new case();
        cs2.subject = 'Testing case 1';
        insert cs2;

        test.startTest();
        CaseAssignment.caseDelete();
        test.stopTest();

        List<case> cs3 = [Select id, subject from case where subject = '%case 1%'];
        system.assertEquals(0, cs3.size());
    }
}