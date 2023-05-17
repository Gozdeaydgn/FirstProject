/**
 Create a variable called starCount 
 initialize it to 0 

 use loop , to print out below 
 0 star ranger 
 1 star ranger 
 2 star ranger 
 3 star ranger 
 4 star ranger 
 5 star ranger 
 6 star ranger 
 */


// Integer starCount = 0 ;

//while(starCount <= 6 ){
//    System.debug(starCount + 'star ranger') ;
//    starCount ++ ;
//}System.debug(starCount + 'star ranger') ;


//OR

//do{

//    System.debug(starCount + 'star range') ;
//    starCount ++ ;

//}while(starCount <= 6 );

Integer starCount = 0 ;

while(starCount <= 6 ){

  if(starCount == 0){
    System.debug('Almost There to 1 star: ' + starCount) ;
  }else if (starCount== 6 ){  
    System.debug( 'All star ranger:' +starCount) ;
  }

  else{
    System.debug(starCount + 'star ranger') ;
  }
    starCount ++ ;
  }


