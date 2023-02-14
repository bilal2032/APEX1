public with sharing class SoapCallouts {
    public static String[] parksCallout(String country) {
        ParksServices.ParksImplPort parkService = new ParksServices.ParksImplPort();
        String[] parks = parkService.byCountry(country);
        System.debug(parks);
        return parks;        
    }
    public static Double doAddCallout(Double num1, Double num2) {
        CalculatorServices.CalculatorImplPort calService = new CalculatorServices.CalculatorImplPort();
        Double sum = calService.doAdd(num1,num2);
        System.debug(sum);
        return sum;        
    }
    public static Double doMultiplyCallout(Double num1, Double num2) {
        CalculatorServices.CalculatorImplPort calService = new CalculatorServices.CalculatorImplPort();
        Double product = calService.doMultiply(num1, num2);
        System.debug(product);
        return product;
    }
}