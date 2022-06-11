public class USAInformation {
    public static HttpResponse fetcInfoUSA(){

        httprequest request = new HttpRequest();
        request.setEndpoint('https://datausa.io/api/data?drilldowns=Nation&measures=Population');
        request.setMethod('GET');

        http http = new http();

        HttpResponse response = http.send(request);
        system.debug(response.getStatus());
        system.debug(response.getStatusCode());

        if (response.getStatusCode()==200){
            string USAinfoJSOn = response.getBody();
            system.debug(USAinfoJSOn);

            object ob = json.deserializeUntyped(USAinfoJSOn);
            map<string, object> results = (map<string, object>)ob;

            List<Object> USAinfo =  (List<Object>)results.get('data');
            system.debug('========object data list Starts======== ');
            for (object a : USAinfo) {
                system.debug(a);   
            }
            system.debug('==========objects data list Ends==========');
        } else{
            system.debug('something went wrong');
        }
        return response;

        }
     

    }
    

