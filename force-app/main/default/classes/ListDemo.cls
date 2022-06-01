public class ListDemo {
    public static string candidatesList (integer indx){
        List<string> listCandidates = new List<string>();
        listCandidates.add('John');
        listCandidates.add('Eric');
        listCandidates.add('Parker');
        listCandidates.add('Emma');
        system.debug ('Candidates are ' + listCandidates);
        string retrnString = '';
        if (indx < listCandidates.size()) {
            retrnString =listCandidates[indx];
        } else {
            retrnString = 'No such value found';
        }
        return retrnString;


    }

    public static void randomIntegerList(){
        List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(20);
        listInteger.add(30);
        listInteger.add(10);
        listInteger.add(50);

        integer index4Value = listInteger.get(4);
        integer index3Value = listInteger[3];
        
        system.debug('Index 3 value is ' + index3Value);
        system.debug('Index 4 value is ' + index4Value);

        system.debug('List of random integers are ' + listInteger);
        
    }
    public static void iterateIntegerList() {
        List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);

        for (integer eachInteger : listInteger) {
            system.debug(eachInteger);
            
        }

        
    }
}

