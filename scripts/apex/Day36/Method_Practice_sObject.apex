// Contact c1 = Utils.getContact('Snow');
// System.debug('c1 value is : ' + c1);  //c1 value is : Contact:{LastName=Snow}
// //insert c1; ==>we dont want to insert all the time (Uncomment)


// System.debug('Utils.getContact(\'ABC\') value is : ' + Utils.getContact('ABC'));
// //Utils.getContact('ABC') value is : Contact:{LastName=ABC}



// List<Contact> myContacts = Utils.getContacts('Snow', 10);
//size of myContacts should be 10

// System.debug('myContacts value is : ' + myContacts);
// //myContacts value is : (Contact:{LastName=Snow 1}, Contact:{LastName=Snow 2}, 
// //Contact:{LastName=Snow 3}, Contact:{LastName=Snow 4}, Contact:{LastName=Snow 5}, 
// //Contact:{LastName=Snow 6}, Contact:{LastName=Snow 7}, Contact:{LastName=Snow 8},
// // Contact:{LastName=Snow 9}, Contact:{LastName=Snow 10})

// System.debug('------------------');

// Account newAcc = Utils.insertNewAccount(' ');
// System.debug('newAcc value is : ' + newAcc);
// //('ABC'); ==> newAcc value is : Account:{Name= ABC , Id=001Dn00000QLbRsIAL}
// //('   '); ==> ERROR OCCURED !!!!
// //            newAcc value is : null

// EmailManager.sendMail('gozdeaydogn@hotmail.com', 'Email from Apex', 'Body from Apex');

// Account myAcc = Utils.getAccountAndContacts('Acc with Contact', 4);
// System.debug('myAcc value is : ' + myAcc);


// // get all the child contacts that belong to above Account here 
// List<Contact> childContacts = [SELECT LastName from Contact 
//                                 WHERE AccountId =  :myAcc.Id  ]; 

// System.debug('childContacts value is : ' + childContacts);
                               

 Account acc = [SELECT Name, Id, (SELECT LastName from Contacts)
                FROM Account
                WHERE Name = 'Acc with Contact'
                LIMIT 1 ] ;     

// Print account name 
System.debug('acc.Name value is : ' + acc.Name);

//How do we access subquery part of parent to child query
System.debug('acc.Contacts value is : ' + acc.Contacts);



List<Contact> accChildContacts  =  acc.contacts ; 

// print the contact lastname
for(Contact each : accChildContacts) {
    System.debug('Contact name value : ' + each.LastName);
}


