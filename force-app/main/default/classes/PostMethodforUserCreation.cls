public with sharing class PostMethodforUserCreation {
    private static string GET_USER_METHOD = CalloutInfo__mdt.getInstance('GET_USERS').Endpoint__c;
    private static string POST_USERS = calloutInfo__mdt.getInstance('POST_USERS').endpoint__c;
    private static string HTTP_GET = 'GET';
    private static string HTTP_POST = 'POST';

    public static HttpResponse post() {
        //1. prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint(POST_USERS);
        request.setMethod(HTTP_POST);
        string jsonReq = '{  "name": "Testing",   "job": "Software"}';
        request.setBody(jsonReq);
        request.setHeader('Content-Type', 'application/json');

        //2. prepare http
        Http http = new http();

        //3. send request, receive response
        HttpResponse response = http.send(request);
        system.debug('status ' + response.getStatus());
        system.debug('status code ' + response.getStatusCode());
        //4. process the response
        if (response.getStatusCode() == 201) {
            string postJSON = response.getBody();
            system.debug(postJSON);

            object ob = Json.deserializeUntyped(postJSON);
            map<string, object> results = (map<string, object>)ob;
            
            
        } else{
            system.debug('something went wrong');
        }
        return response;
    }
}

