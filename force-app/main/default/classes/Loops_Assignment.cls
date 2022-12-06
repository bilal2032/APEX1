public class Loops_Assignment {
    public integer factorialValue = 1;
    public integer forloopsFactorial(integer n){
        for (Integer i = 1; i <= n; i++) {
            factorialValue = i*factorialValue;       
        }
        system.debug(n + '! = ' + factorialValue); 
        return factorialValue;
          
    }
    public integer dowhile(integer m){
        while(m==1){
            factorialValue = m*factorialValue;   
            m--;
        }
        system.debug(m + '! = ' + factorialValue);
        return factorialValue;
    }
}
