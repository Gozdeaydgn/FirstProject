/**

Declare List variable initilize it's value 
and add all the items in one shot 

List<DataType> lstName 
        = new List<DataType>{item1, item2,.....itemN} ; 

 */

 List<String> groceries = new List<String>{'Milk','Bread','Egg','Coffee'};
System.debug(groceries) ;   


// create List of Integer and add 5 values in one shot
List<Integer> numList = new List<Integer>{1,5,6,8,4}; 
System.debug(numList); 



// create List of Decimal and add 5 values in one shot 
List<Decimal> prices = new List<Decimal>{1.99 , 2.99, 5.88 , 100.99 , 0.99} ; 
System.debug(prices); 



// create List of Id and  and add 5 values in one shot 
List<Id> accountIds = new List<Id>{ '0018W0000251OK6QAM', 
                                    '0018W0000251OK6QAT', 
                                    '0018W0000251OK6QAY', 
                                    '0018W0000251OK6QAZ', 
                                    '0018W0000251OK6QAA'
                                    }; 
System.debug(accountIds) ; 





// create a List of Boolean add 5 items into it 
List<Boolean> answers = new List<Boolean>{true , false , true, true, false}; 




