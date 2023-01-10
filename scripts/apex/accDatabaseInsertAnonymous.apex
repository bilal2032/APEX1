account acc1 = new account();
acc1.Name = 'abc';
acc1.Industry = 'Energy';

account acc2 = new account();
acc2.Name = 'abcde';
acc2.Industry = 'Energy';

account acc12 = new account();
account acc13 = new account();

List<account> listAcc = new List<account>{acc1, acc2, acc12, acc13};

List<Database.SaveResult> results = Database.insert(listAcc, false);

for(Database.SaveResult r : results){
    if(r.isSuccess()){
        system.debug('RECORD INSERTYED SUCCESFULLY. Record ID is: ' + r.getId());
    }else{
        system.debug('errored out. error is....' + r.getErrors());
    }
}
