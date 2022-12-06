public class primitiveDataTypeDemo {
    public void printBasicDataType(){
        system.debug('Printing data types');
        string batchName = 'Batch 12';
        integer totalCandidates = 65;
        boolean isAdminCompleted = true;

        system.debug('The batch name is ' + batchName);
        system.debug('Total candidates are ' + totalCandidates);
        system.debug('Is admin completed? ' + isAdminCompleted);

        decimal decNumber = 34.12;
        system.debug('Decimal value is ' + decNumber);

        long longValue = 29384652514L;
        system.debug('The long value is ' + longValue);



    }

    public void printBasicDataType2(){
        object obj1 = 'This is a string';
        object obj2 = 34;
        object obj3 = false;
        system.debug(obj1);
        system.debug(obj2);
        system.debug(obj3);

        ID accID = '00QDo000001A4SdMAK';
        system.debug(accID);
    }

    
}
