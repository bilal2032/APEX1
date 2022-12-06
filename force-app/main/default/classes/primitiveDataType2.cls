public class primitiveDataType2 {
    public void printNewDate(){
        system.debug('create new date instance');

        date newDate = date.newInstance(1994, 7, 23);
        system.debug('new date is .... ' + newDate);

        date newDate2 = date.newInstance(2022, 11, 10);
        system.debug('new date2 is .... ' + newDate2);

        date todaysDate = date.today();
        system.debug('Today\'s date is ' + todaysDate);
    }

    public void printNewTime(){
        time myTime = time.newInstance(2, 14, 32, 10);
        system.debug('new time is .... ' + myTime);

        time meTime = time.newInstance(13, 21, 4, 0);
        system.debug('new metime is .... ' + meTime);
    }

    public void printNewDateTime(){
        date newDate3 = date.today();
        time newTime = time.newInstance(13, 23, 43, 11);

        datetime dt1 = datetime.newInstance(newDate3, newTime);
        system.debug('dt1 is ... ' + dt1);

        datetime dt2 = datetime.newInstance(1994, 10, 29);
        system.debug('dt2 is ... ' + dt2);
    }

}
