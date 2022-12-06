public class MyCity {
    public void stringMethod(){
        string myJob = 'I am a salesforce Developer';

        boolean b1 = myJob.contains('force');
        integer b2 = myJob.length();
        string b3 = myJob.toUpperCase();

        system.debug(b1);
        system.debug(b2);
        system.debug(b3);

    }

    public void dateMethod(){

        date bugun = date.today();
        time simdi = time.newInstance(23, 21, 34, 23);
        datetime myDateTime = datetime.newInstance(bugun, simdi);
        datetime fiftyHoursLater = myDateTime.addHours(50);

        system.debug(myDateTime);
        system.debug(fiftyHoursLater);

    } 


}
