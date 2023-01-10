@isTest
public class CaseQueueableExampleTest {
    @istest       
    private static void caseQueueableExample(){
    CaseQueueableExample n = new CaseQueueableExample();
    test.startTest();//senxrnze hale getiriyo
    id jobid = system.enqueueJob(n);
    test.stopTest();
    case c = [select id, Origin from case  ];
    system.assertEquals('Web', c.Origin);
    }    
}


