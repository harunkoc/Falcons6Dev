public class AnimalsCallouts {

    private static string GET_ANIMALS_ENDPOINT = calloutInfo__mdt.getInstance('GET_ANIMALS').endpoint__c;
    private static string POST_ANIMALS_ENDPOINT = calloutInfo__mdt.getInstance('POST_ANIMALS').endpoint__c;
    private static string HTTP_GET= 'GET';
    private static string HTTP_POST= 'POST';
         
    public static void fetchAnimals(){

        //1. Prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint(GET_ANIMALS_ENDPOINT);
        request.setMethod(HTTP_GET);


        //2. prepare http
        http http = new http();


        //3. send request
        HttpResponse response = http.send(request);
        system.debug('Status ' + response.getStatus());
        system.debug('Status code ' + response.getStatusCode());

        // 4. process response
        if(response.getStatusCode()==200){
            string animalsJSON = response.getBody();
            system.debug(animalsJSON);

            object ob = Json.deserializeUntyped(animalsJSON);
            map<string, object> results = (map<string, object>)ob;

            List<Object> animals =  (List<Object>)results.get('animals');
            system.debug('========object animals list Starts======== ');
            for (object a : animals) {
                system.debug(a);   
            }
            system.debug('==========objects animals list Ends==========');
        } else{
            system.debug('something went wrong');
        }
    }

    public static httpresponse fetcAnimals2(){

        //1. Prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint(GET_ANIMALS_ENDPOINT);
        request.setMethod(HTTP_GET);


        //2. prepare http
        http http = new http();


        //3. send request
        HttpResponse response = http.send(request);
        system.debug('Status ' + response.getStatus());
        system.debug('Status code ' + response.getStatusCode());

        // 4. process response
        if(response.getStatusCode()==200){
           AnimalsCalloutResponce animalresponse = (AnimalsCalloutResponce)JSON.deserialize(response.getBody(),AnimalsCalloutResponce.class);
           system.debug('==========String animals list starts========');
           for (string a: animalresponse.animals) {
               system.debug(a);
               
           }
        } else{
            string result = 'Failed';
            system.debug('something went wrong');
        }
        return response;
    }

    public static HttpResponse postAnimal() {
        //1. prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint(POST_ANIMALS_ENDPOINT);
        request.setMethod(HTTP_POST);
        string jsonReq = '{"name":"fluffykins"}';
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
            system.debug('response ' + response.getBody());
            AnimalsCalloutResponce animalresponse = (AnimalsCalloutResponce)JSON.deserialize(response.getBody(),AnimalsCalloutResponce.class);
            system.debug('====STRING animals list START ======');
            list<string> allAnimals = animalResponse.animals;
            for (string a : allAnimals) {
                system.debug(a);
            }
            system.debug('====STRING animals list END ======');

        } else {
            string result = 'failed';
            system.debug('something went wrong people');
        }

        return response;
    }
}
