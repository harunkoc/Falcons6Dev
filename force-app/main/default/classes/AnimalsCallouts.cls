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
        } else{
            system.debug('something went wrong');
        }
    }
}
