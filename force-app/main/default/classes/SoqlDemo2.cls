public class SoqlDemo2 {
    public static void soqlChildToParent_1() {
        list<contact> listCnt = [Select ID, name, Account.Name, account.industry from contact where account.industry = 'energy'];
        for(contact eachContact : listCnt){
            string cntName = eachContact.Name;
            string cntID = eachContact.ID;
            string accountName = eachContact.Account.Name;
            // string accountInd = eachContact.account.industry;
            system.debug('contact name is ' + cntName + ' account name is '+ accountName);
        }
        
    }
    public static void soqlParentToChild_1() {
        list<account> listAccOpp = [Select id, name, annualrevenue, (select name, amount from opportunities where stagename = 'Closed Won') from account where type = 'Customer - Direct'];
        for(account eachAcc: listAccOpp){
            system.debug('account name is '+ eachAcc.name + ' annual revenue is ' + eachAcc.annualrevenue);
            list<opportunity> listOpp = eachAcc.Opportunities;
            for(opportunity eachOpp: listOpp){
                system.debug('The opportunity name is ' + eachOpp.Name + ' and amount is ' + eachOpp.amount);
            }
        } 
        
    }

}
