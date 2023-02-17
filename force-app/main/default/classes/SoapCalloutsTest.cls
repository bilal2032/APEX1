@isTest
public with sharing class SoapCalloutsTest {
    @isTest
    private static void parksCalloutTest(){
        //1. Set the Mock
        ParksServicesMock mock = new ParksServicesMock();
        Test.setMock(WebServiceMock.class, mock);

        //2. Test the Mock
        String country = 'Turkey';
        String[] parks = SoapCallouts.parksCallout(country);

        //3. Run asserts
        System.assertEquals(2, parks.size());
    }

    @isTest
    private static void doAddCalloutTest(){
        //1. Set the Mock
        DoCalloutMock mock = new DoCalloutMock();
        Test.setMock(WebServiceMock.class, mock);

        //2. Test the Mock
        Double sum =SoapCallouts.doAddCallout(4, 11);

        //3. Run asserts
        System.assertEquals(15, sum);

    }

}