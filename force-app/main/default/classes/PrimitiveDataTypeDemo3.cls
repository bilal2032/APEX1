public class PrimitiveDataTypeDemo3 {
    public void printNewDateTime(){
        datetime dt3 = datetime.newInstance(2018, 2, 14, 3, 45, 9);
        system.debug('dt3 is ' + dt3);
        system.debug('dt3 is ' + dt3.format());

        long longtime = 1344556000800L;
        datetime dt4 = datetime.newInstance(longtime);
        system.debug('dt4 => ' + dt4);

        datetime dt5 = datetime.now();
        system.debug('dt5 is ' + dt5);

        datetime dt6 = datetime.newInstanceGMT(2012, 2, 25, 18, 3, 4);
        system.debug('dt6 => ' + dt6);

    }

}
