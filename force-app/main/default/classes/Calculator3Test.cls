@isTest
public class Calculator3Test {
    private static void aNormalMethod() {

        
    }
    @isTest
    private static void testMessage() {
        Calculator3 c = new Calculator3();
        c.welcomeMessage();
        c.printNewMessage('printing now from test method');


    }
    @isTest
    private static void testAdd1() {
        Calculator3 c = new Calculator3();
        integer sum1 = c.add(4, 67);

        system.assertEquals(71, sum1);
    }
    @isTest
    private static void testAdd2() {
        Calculator3 c = new Calculator3();
        integer sum1 = c.add(4, 67, 10);

        system.assertEquals(81, sum1);
    }
}