@RestResource(urlMapping='/Case/*')
global with sharing class CaseManager {
    //https://hsp-dev-ed.develop.my.salesforce.com/services/apexrest/Case/500Do000001YneAIAS

    @HttpGet
    global static Case getCase() {
        RestRequest request = RestContext.request;
        String uri = request.requestURI;
        Integer lastIndex = uri.lastIndexOf('/');
        Id caseId = uri.substring(lastIndex+1);
        Case cs = [SELECT Id, CaseNumber, Subject, Description, Type, Priority, Status FROM Case WHERE Id = :caseId];
        return cs;        
    }

    @HttpPost
    global static Id postCase(String Subject, String Description, String Priority, String Status) {
        Case cs = new Case();
        cs.Subject = Subject;
        cs.Description = Description;
        cs.Priority = Priority;
        cs.Status = Status;
        insert cs;
        return cs.Id;        
    }

    @HttpDelete
    global static String deleteCase() {
        RestRequest request = RestContext.request;
        String uri = request.requestURI;
        Integer lastIndex = uri.lastIndexOf('/');
        Id caseId =uri.substring(lastIndex+1);
        try{
            delete[SELECT Id FROM Case WHERE Id = :caseId];
        }catch(Exception ex){
            return 'Fail';
        }
        return 'Success';       
    }

    @HttpPut
    global static Id putCase(String Id, String Subject, String Description, String Priority, String Status) {
        Case cs = new Case();
        cs.Id = Id;
        cs.Subject = Subject;
        cs.Description = Description;
        cs.Priority = Priority;
        cs.Status = Status;
        upsert cs;
        return cs.Id;        
    }

    @HttpPatch
    global static Case patchCase() {
        RestRequest request = RestContext.request;
        String body = request.requestBody.toString();
        Case cs = (Case)JSON.deserialize(body, Case.class);
        update cs;
        return [SELECT Id, CaseNumber, Subject, Description, Priority, Status FROM Case WHERE Id = :cs.Id LIMIT 1];
        
    }

}