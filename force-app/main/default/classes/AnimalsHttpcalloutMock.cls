@istest
public class AnimalsHttpcalloutMock implements HttpCalloutMock {
    public httpresponse respond (HttpRequest Request){
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"animals":["monkey", "donkey","cat"]}');
        response.setStatusCode(200);
        return response;

    }
}
