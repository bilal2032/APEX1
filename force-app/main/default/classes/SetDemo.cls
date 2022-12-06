public class SetDemo {
    public static void citySet() {
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Paris');
        cities.add('Pekin');
        cities.add('Nairobi');
        cities.add('Nairobi');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('TOKYO');

        system.debug('cities are ' + cities);
       
        
    }
    public static void randomIntegerSet() {
        set<integer> setInteger= new set<integer>();
        setInteger.add(3);
        setInteger.add(13);
        setInteger.add(21);
        setInteger.add(15);
        setInteger.add(3);
        setInteger.add(21);
        setInteger.add(35);

        system.debug('integer set is '+ setInteger);
        
    }
    public static set<integer> setFromList(list<integer> intList) {
        set<integer> setInt = new set<integer>();
        setInt.addAll(intList);
        return setInt;
        
    }
    public static set<string> uppercaseSet(set<string> setStr) {
        set<string> returnSet = new set<string>();
        for(string eachStr: setStr){
            string tempStr = eachStr.toUpperCase();
            returnSet.add(tempStr);
        }


        return returnSet;
        
    }

}
