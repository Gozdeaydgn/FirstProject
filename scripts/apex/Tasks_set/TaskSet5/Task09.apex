/**
9. Write a program that create a list of strings and print the values that are not equal to "Admin" 
or "Developer" using a for loop and the continue keyword.
  */
 List<String> roleList = new List<String>();
 roleList.add('Java SDET'); 
 roleList.add('Java Developer'); 
 roleList.add('Cybersecurity Analyst'); 
 roleList.add('Developer'); 
 roleList.add('Data Science'); 
 roleList.add('Salesforce Developer'); 
 roleList.add('Admin'); 
 roleList.add('Salesforce Architect'); 
 roleList.add('Sales Manager'); 
 roleList.add('Marketing Director'); 


 for(Integer i=0; i<roleList.size() ; i++) {

    if( roleList.get(i)=='Admin'  ||  roleList.get(i)=='Developer' ){
        continue ; 
    }

    System.debug('Value at index #'+ i +' is :' + roleList.get(i) );

 }


  System.debug('------------------');
 //OR - FOR EACH LOOP - EASIER

 
 for(String role : roleList) {
    if(role=='Admin' || role=='Developer'){
        continue;
    }
    System.debug('role value is : ' + role); 
 }
    