@isTest

public class CalculatorTest {
    @isTest
    public static void testMessage() {
        Calculator.welcomeMessage();
        Calculator.printNewMessage('Message m test class');
        Calculator.printNewMessage2('test', date.today());
        
    }
    @isTest
    public static void addTest() {
        
        integer i = 10;
        integer j = 15;
        integer calAdd = Calculator.add(i, j);
        system.assertEquals(25,calAdd);
    }
    @isTest
   public static void addTest2() {
       integer calcAdd = Calculator.add(10, 15, 20);
       system.assertEquals(45,calcAdd);
       
   }
   @isTest
   public static void addTest3(){
       List<integer> listInt = new List<integer>{15,15,15};
       integer calcAdd = Calculator.add(listInt);
       system.assertEquals(45,calcAdd);

       
   }

}
