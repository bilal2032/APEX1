public class SoqlDemo {
    public static void accountSOQL_1(){
        List<Account> listAcc = [Select ID, name from Account where name like '%a%'];
        system.debug('list of account ' + listAcc);

        
    }
    public static void accountSOQL_11(){
        Account acc = [Select ID, name, phone, accountNumber from account order by createddate desc limit 1];
        system.debug('latest created account is ' + acc);

        string accName = acc.Name;
        string accPhone = acc.Phone;
        system.debug('accName = ' + accName + ' accPhone = ' + accPhone + ' and account number is ' + acc.AccountNumber);

    }
    public static void accountSOQL_3(){
        List<Account> listAcc = [Select ID, name, phone, AccountNumber from Account order by createddate desc];
        system.debug('all created account ' + listAcc);
        system.debug('the size of the list is ' + listAcc.size());

        for(Account eachAccount: listAcc){
            string accName = eachAccount.Name;
            string accPhone = eachAccount.Phone;
            system.debug('accName = ' + eachAccount.Name + ' accPhone = ' + eachAccount.Phone + ' and account number is ' + eachAccount.AccountNumber);


        }

    }
    public static void accountSOQL_filter(string accNameFilter){
        list<account> listAcc = [Select ID, name, phone from Account where name = :accNameFilter];
        system.debug('filtered account ---> ' + listAcc);
    }
    public static void accountSOQL_filter(list<string> accNames){
        list<account> listAcc = [Select ID, name, phone from Account where name IN :accNames];
        system.debug('filtered account ---> ' + listAcc);

    }




}
