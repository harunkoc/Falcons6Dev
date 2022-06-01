public class SetDemo {
    public static void citySet() {
        Set<string> cities = new Set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        system.debug('set of cities ' + cities);  
    }

    public static void randomInteger() {
        Set<integer> setInteger = new Set<integer>();
        setInteger.add(10);
        setInteger.add(15);
        setInteger.add(22);
        setInteger.add(11);
        setInteger.add(15);
        system.debug('Set of random integer ' + setInteger);    
    }

    public static set <integer> setFromList(list<integer> IntList) {
        Set<integer> intSet = new Set<integer>();
        intSet.addAll(intList);
        return intset;
        
    }

    public static set<string> capitalizeSet(set<string> setString) {
        Set<string> capsSet = new Set<string>();
        for (string eachStr : setString) {
            string tempStr = eachStr.capitalize();
            capsSet.add(tempStr);   
        }
        return capsSet;   
    }

}
