public class Cat {

    public string name;
    public string color;
    public Cat() {
        system.debug('Constractor called.');

    }

    public Cat(string n, string c) {
        this.name = n;
        this.color = c; 
        sleeping();

    }

    public void sleeping(){
        system.debug (this.name + ' is sleeping.');
    }
    public static void allCats(){
        Cat falconsCat = new Cat ('Fluffykins', 'White' );
        Cat harunsCat = new Cat ('Zeytin', 'Black');
        Cat sulesCat = new Cat ('Kabasakal', 'Gray');

        List<Cat> cats = new List<Cat>();
        cats.add(falconsCat);
        cats.add(harunsCat);
        cats.add(sulesCat);
        system.debug('All cats are ' + cats);
    }
}