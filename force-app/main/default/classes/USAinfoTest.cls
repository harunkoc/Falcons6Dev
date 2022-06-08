@istest
public with sharing class USAinfoTest {
    @istest
    private static void testUSAinfoSuccess(){
        USAinfoHttpCalloutMock Usa = new USAinfoHttpCalloutMock();
        test.setMock(HttpCalloutMock.class, Usa);

        test.startTest();
        HttpResponse response = USAInformation.fetcInfoUSA();
        test.stopTest();

        system.assertEquals(200, response.getStatusCode());
    }
}
    

//error message is: Illegal assignment from void to System.HttpResponse (9:22)