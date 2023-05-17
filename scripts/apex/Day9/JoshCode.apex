/*
- A set is an unordered collection of elements that do not contain any duplicates. 
- Set elements can be of any data type—primitive types, collections, sObjects, 
user-defined types, and built-in Apex types.
*/

Set<Integer> mySet = new Set<Integer>();            // Define a new set

mySet.add(1);                                       // Add three elements to the set
mySet.add(3);
mySet.add(1);                                       // Duplicate element
mySet.add(2);                                       
System.debug(mySet);     

System.debug(mySet.size());

mySet.remove(2);                                    // Remove the integer value from the set
System.debug(mySet);



/*
Define a list of brand of cars
Practice List methods
*/

List<String> cars = new List<String>{'Ford', 'Toyota', 'BMW'};
System.debug(cars);

cars.add('Mercedes');
cars.add('Honda');
cars.set(1, 'Tesla');
System.debug(cars);

Boolean isHonda = cars.contains('Honda');
System.debug(isHonda);

System.debug(cars.get(3));

cars.clear();
System.debug(cars.isEmpty());



Integer n = 2 ; 

for(Integer count=1 ; count<=10 ; count++){

    System.debug(count + ' X ' + n + ' = ' + (count*n)); 
    
}


/* 
Practice
season: winter - boots
        spring - sneakers
        summer - sandals
        autumn - loafers
        */

String season = 'summer';

switch on season{
    when 'winter'{
        System.debug('Wear your boots');
    }
    when 'spring'{
        System.debug('Wear your sneakers');
    }
    when 'summer'{
        System.debug('Wear your sandals');
    }
    when else{
        System.debug('Wear your loafers');
    }
}