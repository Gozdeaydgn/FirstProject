/**

 Create list of 5 Accounts fill it up 
 insert this into SF 
 Create Map<Id,Account> and assign the value 
 fill up up this map with Id of each record in the list as key 
                          The record itself as value 
 */

 List<Account> accList = new  List<Account>(); 
 accList.add(   new Account(Name='Cydeo1')   ); 
 accList.add(   new Account(Name='Cydeo2')   ); 
 accList.add(   new Account(Name='Cydeo3')   ); 
 accList.add(   new Account(Name='Cydeo4')   ); 
 accList.add(   new Account(Name='Cydeo5')   ); 

 insert accList;
 // Database.insert(accList,false);

 // Create Map<Id,Account> and assign the value fill up up this map with Id of each record in the list as key The record itself as value


//  Map<Id,Account> accMap = new  Map<Id,Account>( accList );
// System.debug('accMap value is : ' + accMap); 

Map<Id,Account> accMap = new  Map<Id,Account>() ; 
// // putAll(the record List) ==>> Map<Id, yoursObjectType>
// accMap.putAll( accList ); 
// System.debug('accMap value is : ' + accMap); 

for(Account eachAccount : accList) {
    accMap.put( eachAccount.Id ,  eachAccount ); 
}
System.debug('accMap value is : ' + accMap);
📍 Name :  warmuptask.apex
/**
Create a List of String with 5 items 
Create a Map to store 
   each word(as key) and character Count of that word(as value) as key value pair
   Fill up the Map with 5 key-value pair with above criteria
 */

List<String> strList = new List<String>{
  'Happy',
  'Sunny',
  'Pleasant',
  'Breakfast',
  'flower'
};

Map<String, Integer> happyMap = new Map<String, Integer>();
// happyMap.put( 'Happy'   ,   5 ); 
happyMap.put( strList[0]   ,   strList[0].length() );
// happyMap.put( 'Sunny'   ,   5 ); 
happyMap.put( strList[1]   ,   strList[1].length() );
// happyMap.put( 'Pleasant'   ,8 ); 
happyMap.put( strList[2]   ,   strList[2].length() );
// happyMap.put( 'Breakfast' , 9   ); 
happyMap.put( strList[3]   ,   strList[3].length() );
// happyMap.put( 'flower'  ,   6 ); 
happyMap.put( strList[4]   ,   strList[4].length() );

System.debug('happyMap value is : ' + happyMap); 
//happyMap value is : {Breakfast=9, Happy=5, Pleasant=8, Sunny=5, flower=6}