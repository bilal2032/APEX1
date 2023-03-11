public with sharing class AccountCtrl {
    @AuraEnabled(cacheable=true)
    public static List<Account> getTopAccounts(){
        return[SELECT Id, Name, Type, Industry, AnnualRevenue from Account WHERE AnnualRevenue != null WITH SECURITY_ENFORCED ORDER BY AnnualRevenue DESC LIMIT 5];
    }

    @AuraEnabled
    public static List<Account> getAccountByIndustry(String industry){
        return [SELECT Name, Type, Industry, AnnualRevenue FROM Account WHERE Industry = :industry WITH SECURITY_ENFORCED ORDER BY AnnualRevenue DESC];
    }
}