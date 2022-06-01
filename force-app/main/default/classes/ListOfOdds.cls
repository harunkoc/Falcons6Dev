public  class ListOfOdds {
    public ListOfOdds(){
        system.debug('Welcome to find the odd numbers!');
    }

     public static void findOdds(integer num1) {
         integer reminder;
         List<integer> numList = new List<integer>();

         for (Integer i = 1; i <=num1; i++) {
             reminder = math.mod(i, 2);
             if (reminder==1) {
                 numList.add(i);
                 
             }
             
         }
         system.debug(numList);
        
    }
    
}
