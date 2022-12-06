public class ListDemo {
    public static string candidatesList(integer i) {
        List<string> listCandidates = new List<string>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Luke');
        listCandidates.add('Elon');
        system.debug('List of candidates is ' +listCandidates);

        string candidateAt3Index = listCandidates[3];
        system.debug('candidate name at index 3 is ' + candidateAt3Index);
        string returnString = '';
        integer sizeOfList = listCandidates.size();
        if(i>=0 && i<sizeOfList){
            returnString = listCandidates[i];
        }else{
            returnString = 'No values found. Stay in limits';
        }
        return returnString; 
        
    }
    public static void randomIntegerList() {
        List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(23);
        listInteger.add(10);
        listInteger.add(-4);
        listInteger.add(13);
        listInteger.add(10);
        system.debug('List of random integer is ' + listInteger);
        integer valueAt3index = listInteger.get(3);
        integer valueAt3index2 = listInteger[3];
        system.debug(valueAt3index);
        system.debug(valueAt3index2);
        
    }
    public static void allCats() {
        List<cat> listCat = new List<cat>();
        Cat FalconCat = new Cat('fluffykins', 'white');
        Cat batch12Cat = new Cat('simba', 'white');
        Cat batch12Cat3 = new Cat('blackpaper', 'black');
        listCat.add(FalconCat);
        listCat.add(batch12Cat);
        listCat.add(batch12Cat3);
        listCat.add(FalconCat);
        system.debug('List of cats is ' + listCat);

       
    }

}
