public with sharing class CalculatorCallout {
    public static double addition(double num1, double num2) {
        calculatorServices.calculatorImplport calc = new calculatorServices.calculatorImplport();
        return calc.doAdd(num1,num2);   
    }
    
    public static double subtraction(double num1, double num2) {
        calculatorServices.calculatorImplport calc = new calculatorServices.calculatorImplport();
        return calc.doSubtract(num1,num2);   
}
public static double multiplication(double num1, double num2) {
    calculatorServices.calculatorImplport calc = new calculatorServices.calculatorImplport();
    return calc.domultiply(num1,num2);

}
public static double division(double num1, double num2) {
    calculatorServices.calculatorImplport calc = new calculatorServices.calculatorImplport();
    return calc.doDivide(num1,num2);
}
}
