// 2. Write an Apex code that create List or Array of unknown numbers(more than 3) of Integer values.
//    - Store last 3 items into Integer Array
//    - print out the Integer Array



List<Integer> numberList = new List<Integer>{90,79,29,25,32,11,22,33,32,54,10};

/* 
in order to get certain location,we need index
in order to get last 3 item,
    last item                 : numberList.size-1    ===> 9
    second item from the last : numberList.size-2    ===> 8
    third item from the last  : numberList.size-3    ===> 7

*/

Integer [] last3items = new Integer [3];
last3items [0] = numberList.get(numberList.size()-3);
last3items [1] = numberList.get(numberList.size()-2);
last3items [2] = numberList.get(numberList.size()-1);

System.debug('Last3items value is: ' + last3items);
