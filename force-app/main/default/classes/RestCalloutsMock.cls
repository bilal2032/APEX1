public with sharing class RestCalloutsMock implements HttpCalloutMock {
    public HttpResponse respond(HttpRequest request){
        if (request.getEndpoint()=='https://th-apex-http-callout.herokuapp.com/animals' && request.getMethod()=='GET') {
            HttpResponse response = new HttpResponse();
            response.setStatusCode(200);
            response.setStatus('OK');
            response.setBody('{"animals":["majestic badger","fluffy bunny","scary bear","chicken"]}');
            response.setHeader('Content-Type', 'application/json;charset=UTF-8');
            return response;        
        } else if(request.getEndpoint()=='https://api.instantwebtools.net/v1/airlines' && request.getMethod()=='GET'){
            HttpResponse response = new HttpResponse();
            response.setStatusCode(200);
            response.setStatus('OK');
            response.setBody('[{"id":1003405002,"name":"Quatar Airways","country":"Quatar","logo":"https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/300px-Qatar_Airways_Logo.svg.png","slogan":"Going Places Together","head_quaters":"Qatar Airways Towers, Doha, Qatar","website":"www.qatarairways.com","established":"1994"}]');
            response.setHeader('Content-Type', 'application/json;charset=UTF-8');
            return response;
        } else if(request.getEndpoint()=='https://api.onlinewebtutorblog.com/employees' && request.getMethod()=='GET'){
            HttpResponse response = new HttpResponse();
            response.setStatusCode(200);
            response.setStatus('OK');
            response.setBody('{"error":0,"msg":"data found","data":[{"id":1,"username":"ebahringer","name":"Braulio Luettgen","email":"kaela.turner@example.net","gender":"Female","designation":"Mean Stack Developer","phone_number":"781.322.7616","complete_address":"298 Edythe Harbors Suite 697Lake Mathiasburgh, MN 28564-6386"}]}');
            response.setHeader('Content-Type', 'application/json;charset=UTF-8');
            return response;
        }
        return null;        
    } 
}