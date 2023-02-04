public with sharing class AirlineTriggerHandler {
    public static void afterInsert(Map<Id, Airline__c> newAirlines) {
        //callout: send airlines info to authority
        for(Id airlineId : newAirlines.keySet()){
            AirlineCallouts.postAirline(airlineId);
        }        
    }
}