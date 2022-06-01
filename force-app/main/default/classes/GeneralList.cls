public class GeneralList {
    public static list<string> toCaps(list<string> lst) {

        List<string> reList = new List<string>();
        for (string eachStr : lst) {
            system.debug(eachStr);
            string caps = eachStr.capitalize();
            reList.add(caps);
            
        }

        return reList;
    }
   
}
