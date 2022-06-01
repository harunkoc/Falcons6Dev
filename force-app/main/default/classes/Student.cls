public class Student {
    public string firstName = '';
    public string lastName = '';
    public string classYear = '';
    public string major = '';

    public string genarateReport(){
        system.debug ('Report Generated for ' + firstName + ' ' + lastName +  ' of ' +classYear);
        return major;
    }

}
