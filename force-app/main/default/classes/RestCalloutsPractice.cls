public with sharing class RestCalloutsPractice {
    /*
    //Endpoint: https://api.covidtracking.com/v1/us/current.json
    //Http Method: GET
    public static HttpResponse getCovidInfo() {
        //1. Prepare HtppRequest and wrap all the necessary data in it.
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.covidtracking.com/v1/us/current.json');
        request.setMethod('GET');

        //2. Prepare Internet.
        Http http = new Http();

        //3. Send HttpRequest overt the internet in order to recive HttpResponse back.
        HttpResponse response = http.send(request);

        //4. Process HttpResponse
        if (response.getStatusCode()==200) {
            String jsonString = response.getBody();

            List<wrapperCovidInfo> wrapper = (List<wrapperCovidInfo>)JSON.deserialize(jsonString, List<wrapperCovidInfo>.class);

            List<Covid_Info__c> listInfo = new List<Covid_Info__c>();

            for(wrapperCovidInfo eachWrapper : wrapper){
                Covid_Info__c newCI = new Covid_Info__c();
                newCI.Name = eachWrapper.states;
                newCI.Positive__c = eachWrapper.positive;
                newCI.Negative__c = eachWrapper.negative;
                newCI.Pending__c = eachWrapper.pending;

                listInfo.add(newCI);
            }
            insert listInfo;            
        }
        return response;
        
    }

    public class wrapperCovidInfo{
        public String states;
        public Integer positive;
        public Integer negative;
        public Integer pending;
    }*/

    public static HttpResponse getCovidInfo(){
        HttpRequest Request = new HttpRequest();
        Request.setEndpoint('https://api.covidtracking.com/v1/us/current.json');
        Request.setMethod('GET');

        Http http = new Http();
        HttpResponse response = http.send(Request);
        
        if(response.getStatusCode() == 200){
           string jsonstring = response.getBody();
           system.debug(jsonstring);
           List<wrapperCovidInfo> listCovid = ( List<wrapperCovidInfo>)JSON.deserialize(jsonString, List<wrapperCovidInfo>.class);
           wrapperCovidInfo listCovidWrapper = listCovid[0];
          

          list<Covid_Info__c> listInfo = [Select id,name,Positive__c,Negative__c,Pending__c from Covid_Info__c  Where Received_Date__c = TODAY ];
          if(!listInfo.isEmpty()){
            listInfo[0].Name =  listCovidWrapper.states;
            listInfo[0].Positive__c = listCovidWrapper.positive;
            listInfo[0].Negative__c = listCovidWrapper.negative;
            listInfo[0].Pending__c = listCovidWrapper.pending;
            update listInfo[0];
          }else{            
                Covid_Info__c obj = new Covid_Info__c();
                obj.Name = listCovidWrapper.states;
                obj.Positive__c =listCovidWrapper.positive;
                obj.Negative__c = listCovidWrapper.negative;
                obj.Pending__c = listCovidWrapper.pending;
    
                insert obj;
          }      
        }
        return response;          
    }
    public class wrapperCovidInfo{
        public string states;
        public integer positive;
        public integer negative;
        public integer pending;
    }

    //Endpoint: https://gorest.co.in/public/v2/posts
    //HttpMethod: POST
    public static HttpResponse posts() {
        //1. Prepare HttpRequest and wrap all the necassary data in it.
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://gorest.co.in/public/v2/posts');
        request.setMethod('POST');
        Post__c body = [Select Name, Title__c, User_ID__c, Body__c from Post__c WHERE CreatedDate = TODAY limit 1];

        wrapperPost post = new wrapperPost();
        post.user_id = Integer.ValueOf(body.User_ID__c);
        post.title = body.title__c;
        post.body = body.body__c;



        request.setBody(JSON.serialize(post));
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setHeader('Authorization', 'Bearer 3ac6c09c8868c79e0cfa3f7686e62e97913dfc6356387c186be79ca8d7a2da79');

        //2. Prepare internet
        Http http = new Http();


        //3. Send the HttpRequest over the internet in order torecieve HttpResponse.
        HttpResponse response = http.send(request);

        //4. Process HttpResponse
        if (response.getStatusCode() == 201) {
            System.debug(response.getBody());
        } else {
            System.debug('Something went wrong while creating post: ' + response.getBody());
        }
        return response;                   
    }

    public class wrapperPost{
        public Integer user_id;
        public String title;
        public String body;
    }
}