@isTest
public with sharing class AnimalsHTTPMockCalloutFailure implements HttpCalloutMock {
    public Httpresponse respond (HttpRequest request) {
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-type', 'application/json');
        response.setStatusCode(404);
        return response;
        
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
