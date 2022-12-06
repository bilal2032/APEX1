list<string> listStr = new list<string>();
if(listStr.isEmpty()){
    system.debug('list is empy');
}
listStr.add('some strings');
boolean listIsEmpty = listStr.isEmpty();
if(!listIsEmpty){
    system.debug('list is not empy');
}

// list<string> listStr2;
// listStr2.add('does this work?'); - de-reference a null object. Non of the methods work.

List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(23);
        listInteger.add(10);
        listInteger.add(-4);
        listInteger.add(13);
        listInteger.add(10);
        system.debug('before sort' + listInteger);
        listInteger.sort();
        system.debug('after sort' + listInteger);
