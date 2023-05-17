/*
5. Create a List of 10 names into List of String with some duplicate value 
   find out how many unique names showed up in the list using below approach
   1. create an empty Set of String 
   2. Iterate over names List using for each loop
   3. use add method of Set to add each items into Set
   4. outside the loop print out the size of set
*/

List<String> names = new List<String>{'John', 'Ken', 'Mary', 'Ben', 'John', 'Akbar', 'Arife',
                                            'Nina', 'Arife', 'Ben'};

Set<String> noDuplicateNames = new Set<String>();
System.debug(names.size());

for(String eachName : names){
    System.debug(eachName);
    noDuplicateNames.add(eachName);
}

System.debug(noDuplicateNames);

System.debug(noDuplicateNames.size());