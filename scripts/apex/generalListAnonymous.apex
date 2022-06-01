// List<string> l = new List<string>();
// l.add('harun');
// l.add('sule');
// l.add('arif');
// GeneralList.toCaps(l);
// List<string> l2 = GeneralList.toCaps(l);
// system.debug(l2);

Set<string> fruits = new Set<string>();
fruits.add('apple');
fruits.add('Orange');
fruits.add('grabes');
fruits.add('banana');
fruits.add('apPle');
fruits.add('apPle');
system.debug('Fruits ' + fruits);

Set<string> Vegie = new Set<string>();
Vegie.add('beans');
Vegie.add('tomato');
Vegie.add('patato');
Vegie.add('pepper');

system.debug('vegies ' + Vegie);

Set<string> shopNow = new Set<string>();
shopNow.addAll(vegie);
shopNow.addAll(fruits);
system.debug('go and shop ' + shopNow);

