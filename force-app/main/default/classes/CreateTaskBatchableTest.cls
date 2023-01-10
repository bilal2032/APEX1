@isTest
public class CreateTaskBatchableTest {
    @isTest
    private static void caseTaskTest() {
        List<Case> listCase = new List<Case>();
        for (integer  i=0; i<200; i++) {
            case cs = new case();
            cs.Status = 'New';
            cs.Origin = 'Phone';
            listCase.add(cs);            
        }
        if(!listCase.isEmpty()){
            insert listCase;
        } 
        
        test.startTest();
        CreateTaskCaseBatchable crt = new CreateTaskCaseBatchable();
        Database.executeBatch(crt, 200);
        test.stopTest();

        List<Task> tsk = [Select id from task];
        System.assertEquals(200, tsk.size());
    }
    
    @isTest
    private static void schedulableTask() {
        Test.startTest();
        taskshedulableclas crt = new taskshedulableclas();

        string cronex = '0 0 15 1/1 * ? *';
        system.schedule('Daily scheduled task', cronex, crt);

        Test.stopTest();        
    }
}
