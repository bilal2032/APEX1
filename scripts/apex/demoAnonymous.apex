try{
    Account acc = new Account();
    insert acc;
}
catch(DMLException de){
    System.debug(de);
    System.debug('Hello DML error.');

}
catch(Exception e){
    System.debug(e);
    System.debug('Hello error.');
}

try{
    List<String> list1;
    String a = list1[0];
    System.debug(a);
}
catch(DMLException de){
    System.debug(de);
    System.debug('Hello DML error.');

}
catch(Exception e){
    System.debug(e);
    System.debug('Hello error.');
}

