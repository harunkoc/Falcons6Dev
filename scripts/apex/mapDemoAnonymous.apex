string retriveMoth6 = Mapdemo.retrieveMonth(6);
system.debug (retriveMoth6);

string retriveMoth4 = Mapdemo.retrieveMonth(4);
system.debug (retriveMoth4);

string retriveMoth99 = Mapdemo.retrieveMonth(99);
system.debug (retriveMoth99);



// Map<string, string> zipCodeMap = new Map<string, string>();

// zipCodeMap.put('380061', 'Ahmedabad');
// zipCodeMap.put('262662', 'new York');
// zipCodeMap.put('383883', 'California');

// system.debug(zipCodeMap);

Map<string, integer> items = new Map<string, integer>();
items.put('Apple', 35);
items.put('Orange', 15);
items.put('Futboll', 25);
items.put('Pen', 45);
items.put('Notebooks', 95);

system.debug('the size of the map is ' + items.size());


system.debug('The quantity of apple is ' + items.get('Apple'));

set<string>items_2= items.keySet();
system.debug('all items are ' + items_2);

list<integer>quantity= items.values();
integer sumOfQ=0;
for (integer q : quantity) {
    sumOfQ += q;
}

    system.debug('all number of items ' + sumOfQ);








