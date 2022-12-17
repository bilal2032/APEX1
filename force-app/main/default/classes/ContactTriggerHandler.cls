public class ContactTriggerHandler {
    public static void updateContactValidation1(List<contact> conTriggerNew, 
                                                List<contact> conTriggerOld, 
                                                Map<id, contact> conTriggerNewMap, 
                                                map<id, contact> conTriggerOldMap) {
        for (contact eachContact : conTriggerNew) {
            Contact oldContact = conTriggerOldMap.get(eachContact.id);
            if (oldContact.LeadSource == 'Partner Referral') {
                eachContact.addError('Cannot update Partner Referral contact');
            }
        }
    }
    public static void updateContactValidation2(List<contact> conTriggerNew, 
                                                List<contact> conTriggerOld, 
                                                Map<id, contact> conTriggerNewMap, 
                                                map<id, contact> conTriggerOldMap) {
        for (contact eachContact : conTriggerNew) {
            if (eachContact.LeadSource != conTriggerOldMap.get(eachContact.id).LeadSource) {
                eachContact.LeadSource.addError('Cannot update Lead Source');
            }
        }
    }
    public static void updateContactValidation2(List<contact> conTriggerNew, 
                                                List<contact> conTriggerOld, 
                                                Map<id, contact> conTriggerNewMap, 
                                                map<id, contact> conTriggerOldMap) {
}
