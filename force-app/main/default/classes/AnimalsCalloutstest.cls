@istest
public with sharing class AnimalsCalloutstest {
    @istest
    private static void testFetchAnimalsSuccess(){
        AnimalsHttpcalloutMock am = new AnimalsHttpcalloutMock();
        test.setMock(HttpcalloutMock.class, am);

        test.startTest();
        AnimalsCallouts.fetchAnimals();
        HttpResponse response = AnimalsCallouts.fetcAnimals2();
        test.stopTest();

        system.assertEquals(200, response.getStatusCode());
    }
    @istest
    private static void testFetchAnimalsfailure(){
        AnimalsHTTPMockCalloutFailure am = new AnimalsHTTPMockCalloutFailure();
        test.setMock(HttpcalloutMock.class, am);

        test.startTest();
        HttpResponse response = AnimalsCallouts.fetcAnimals2();
        test.stopTest();

        system.assertEquals(404, response.getStatusCode());
    }
}
