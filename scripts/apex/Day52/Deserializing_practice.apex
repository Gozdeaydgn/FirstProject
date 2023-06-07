String myJsonStr = '{"id":193,"name":"Updated Dev","gender":"Female","phone":9874563210}' ; 
System.debug('myJsonStr value is : ' + myJsonStr);

Map<String,Object> myMap = (Map<String,Object>) JSON.deserializeUntyped(myJsonStr) ; 
System.debug('myMap value is : ' + myMap);