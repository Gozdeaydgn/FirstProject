// 10. Write a program that takes a list of integers that represent the amounts of money spent by a set of users, 
// and calculates the number of users who spent more than a certain amount (like 10000) of money.

// in another word; 
// create a list of Integer and get the count of numbers that over 10000 


List<Integer> amount = new List<Integer>{
    100, 
    500, 
    700, 
    1100, 
    2200, 
    36000000, 
    500000, 
    55000};

List<Integer> biggerAmount = new List<Integer>();

for(Integer each : amount) {
    if(each>10000){
        biggerAmount.add(each);
    }
}

System.debug(biggerAmount); 
System.debug(biggerAmount.size()); 
    