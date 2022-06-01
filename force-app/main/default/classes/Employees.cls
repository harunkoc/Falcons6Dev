public class Employees {
   public static void nameOfEmployees() {
       List<String > employeeName = new List<String >();
       employeeName.add('Marry');
       employeeName.add('Jane');
       employeeName.add('Luke');
       employeeName.add('Mendes');
       employeeName.add('Carl');  
       employeeName.sort();
       system.debug('the list of the employees are ' + employeeName );
   }
   
}
