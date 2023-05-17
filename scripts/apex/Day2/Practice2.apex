String studentName    = 'Gozde' ; 
Integer studentAge    = 26 ; 
String studentState   = 'NJ' ;
Boolean attendClass   = true ; 
Decimal studentHeight = 5.7 ;

System.debug('My Name is ' + studentname + '.');
System.debug('I am ' +  studentage  +  ' years old.' );
System.debug('I live in ' + studentstate + ' State.' );
System.debug('I attend class daily ' + attendclass + '.' );
System.debug('I am ' + studentheight + ' feet tall. ');


/*Integer num1 = 10 ;
Integer num2 = 20 ; 
Integer num3 = 30 ;
*/

Integer num1 = 10 , num2 = 20 , num3 = 30 ;


Boolean isNum1GreaterThanNum2 = num1 > num2 ;
System.debug('is Num1 Greater Than Num2 ' + isNum1GreaterThanNum2 );


Boolean isNum2LessThanNum3= num2 < num3 ; 
System.debug('is Num2 Less Than Num3 ' + isNum2LessThanNum3 );


System.debug('Is Num1 Greater Than Or Equal Num3 : ' + (num1 >= num3) );


//System.debug('Is Num3 Equal 30 or Not: ' + (num3 == 30) ); or //

System.debug( num3==30 );

System.debug( 'Is Num2 and Num3 equal? : ' + (num2==num3) );


System.debug('Is Num1 not equal to Num2 : ' + (num1<>num2));
System.debug('Is Num1 not equal to Num2 : ' + (num1!=num2));



String language = 'Apex' ;

System.debug('Is the language Apex or not :' +  (language == 'Apex')  );



Integer num4 = 40 , num5 = 50 , num6 = 60 ; 

Boolean isNum4Between20And45 =  (num4 > 20) && (num4< 45) ;   //true
System.debug('is '  + num4 + ' Between 20 And 45 : ' + isNum4Between20And45);  //true




Boolean isNum5Greater100OrLessThan20 =  (num5>100) || (num5<20) ;  //false
System.debug('is num5 is greater than 100 or less than 20 ' + isNum5Greater100OrLessThan20);


//OR - System.debug('is Num5 Greater than 100 or Less than 20 : ' + (num5 < 20 || num5 >100) );//

System.debug(isNum4Between20And45); //true
System.debug(!isNum4Between20And45); //false


System.debug(!true ); // false
System.debug(!false ); // true




// ----- Compound Operator : +=  _=  *=  /+

Integer Score = 100 ;

// Increase the value of the score by 5 
//score = Score + 5 ;  // 105
score += 5;

System.debug('Increase the value of the score by 5 ' + score);

// Decrease the value of the score by 55 
//score = Score - 55 ; // 50
score -= 55;
System.debug('Decrease the value of the score by 55 ' + score);
 +
// Double the value of score (multiply by 2)
//score = Score * 2 ;  // 100
score *= 2;
System.debug('Double the value of score ' + score);

// Divide the current value of score by 4 and reassign
//score = score / 4 ; //25
score /= 4 ; 
System.debug('Divide the current value of score by 4  ' + score);


// using += for sstring
String myName = ' Jon ' ;
myName += ' Snow ' ;      // Jon Snow

myName += 'of Winterfell';

//Jon Snow of Winterfell
System.debug('Name: ' + myName  );







//NEW PAGE

//Increment and Decrement Operator ++ --

Integer age = 20 ; 

// increase the value by 1 
// age = age + 1 ; // 21 
//age += 1 ; // 21 

++age ; //21
System.debug('age after ++ is : ' + age ); //21


// decrease the value by 1 
//age = age - 1 ; //20
//age -= 1 ; //20

--age ; //20
System.debug('age after -- is : ' + age); //20