public with sharing class RestCalloutsBO {

    //Endpoint: https://th-apex-http-callout.herokuapp.com/animals
    //Http Method: GET
    public static HttpResponse getAnimals() {
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');

        //2. Prepare internet
        Http http = new Http();

        //3. Send the HttpRequest over the internet in order to recieve HttpResponse back
        HttpResponse response = http.send(request);

        //4. Process HttpResponse
        System.debug(response.getStatusCode());
        System.debug(response.getBody());
        return response;       
    }
}