public class operationsHelper {
    public Decimal largestOutOfTwoNumbers(Decimal num1, Decimal num2){
        
        if (num1 > num2) {
            return num1;
        } else {
            return num2;
        }

    }
    public decimals smallestOutOfThreeNumbers(Decimal x, Decimal y, Decimal z){
        decimal m;
        if (x<y && x<z) {
            return x;
            
        } else if (y<x && y<z) {
            return y;
            
        }else if(z<x && z<y){
            return z;
        } else {
            return m;
        }
            
        
    }
}
