// Opportunity o1 = Utils.getOneOpportunity('Test1' ,true);
// System.debug('o1 value is : ' + o1); 
// //o1 value is : Opportunity:{Name=Test1, CloseDate=2023-04-20 00:00:00, StageName=Prospecting, Amount=50000, Id=006Dn000008gsK8IAI}
// //bcs there is insert

// Opportunity o2 = Utils.getOneOpportunity('Test2' ,false);
// System.debug('o2 value is : ' + o2); 
// // //o2 value is : Opportunity:{Name=Test2, CloseDate=2023-04-20 00:00:00, StageName=Prospecting, Amount=50000}

// System.debug('------------------');



// // List<Opportunity> opps1 = Utils.getManyOpps('Music', 5, true);
// // System.debug('opps1 value is : ' + opps1); 

// List<Opportunity> opps2 = Utils.getManyOpps('Opp Under Account', 3, false);
// System.debug('opps2 value is : ' + opps2); 

// //insert opps2;

// // //Create an Account using Utils.insertNewAccount

// //HOW DO YOU PUT AN OPPORTUNITY UNDER ACCOUNT ? HOW TO SELECT A PARENT FOR THE OPPORTUNITY?
// //ACCOUNT IS A PARENT OPP IS A CHILD  ==> FILL UP ACCOUNTID FIELD  ==>insertAccountWithOpps

// Account newAcc = Utils.insertNewAccount('Galactic Empire');
// // //and put all opps2 under this account
// // //in order to do that what we need to set AccountId field of all opps in the list to newAcc.Id
//  for(Opportunity each : opps2){
//     each.AccountId = newAcc.Id ;
//  }
//  insert opps2;



// Account acc = Utils.insertAccountWithOpps('Skywalker Inc', 4) ;
// System.debug('acc value is : ' + acc) ; 
// // //acc value is : Account:{Name=Skywalker     Inc, Id=001Dn00000QM9u7IAD}





// //ACCOUNTCONTROLLER.CLS PART

// Account a1 = AccountController.getAccountByName('Skywalker Inc'); 
// System.debug('a1 value is : ' + a1);
//  //a1 value is : Account:{Id=001Dn00000QM9u7IAD, Name=Skywalker Inc}


// List<Account> accLstWithRevenue = AccountController.getAccountWithAnnualRevenue();
// System.debug('accLstWithRevenue value is : ' + accLstWithRevenue); 

System.debug('AccountController.getMaxRevenue() value is : ' 
                    + AccountController.getMaxRevenue());
//AccountController.getMaxRevenue() value is : 23423423423
