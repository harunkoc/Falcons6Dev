public class AnimalsCallouts {
    public static void fetcAnimals(){

        //1. Prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');


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
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');


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
            system.debug('something went wrong');
        }
        return response;
    }
}
