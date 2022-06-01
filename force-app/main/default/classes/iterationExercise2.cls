public class iterationExercise2 {
   public integer getPerfectAverage(integer num1, integer num2) {
       integer counter = num2-num1 +1;
       integer sum = 0;
       for (Integer i = num1; i <= num2; i++) {
           sum += i;
           
       }
       return sum/counter;
   }
}
