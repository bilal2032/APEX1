public class ForEachLoopDemo1 {
    public static void iterateIntegerList(){
        List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(23);
        listInteger.add(10);
        listInteger.add(-4);
        listInteger.add(13);
        listInteger.add(10);

        for(integer eachInteger: listInteger){
            system.debug(eachInteger);
        }
    }
    public static integer add(list<integer> intList){
        integer returnInt = 0;
        for(integer eachInt: intList){
            returnInt += eachInt;
        }
        system.debug('The sum of the list is ' + returnInt);
        return returnInt;
    }
}
