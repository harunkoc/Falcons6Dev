public class Calculator {
    public static void welcomeMessage(){
        system.debug('welcome to apex calC');
    }
    public static void printNewMessage(string msg){
        //use parameter variable name inside the method.
        system.debug(msg);
    }

    public static void printNewMessage2(string msg, Date dt){
        system.debug(msg);
        system.debug(dt);
    }
    //add method with 2 params
    public static integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
    }
    //add method with 3 params
    public static integer add(integer a, integer b, integer c){
        return a+b+c;
    }

    public static integer add(list<integer> intList) {
        integer sum = 0;
        for (integer eachInt : intList) {
            sum += eachInt;  
        }
        return sum;
    }
}




