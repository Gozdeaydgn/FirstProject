// . Write and Apex code that store opportunityStage as String and probabilityPercentage as Decimal
//    - if the stage is 'Prospecting', assign the value of probabilityPercentage to 0.1
//    - if the stage is 'Qualificationn', assign the value of probabilityPercentage to 0.2
//    - if the stage is 'Need Analysis', assign the value of probabilityPercentage to 0.3
//    - if the stage is 'Closed Won', assign the value of probabilityPercentage to 1.0
//    - if the stage is 'Closed Lost', assign the value of probabilityPercentage to 0
//    //switch on 

String opportunityStage = 'Closed Won' ; 
Decimal probabilityPercentage = 0.1;

switch on opportunityStage {
   when 'Prospecting' {
      System.debug('Probablity Percentage is: ' + 0.1);
   }
   when 'Qualificationn' {
      System.debug('Probablity Percentage is: ' + 0.2);
   }
   when 'Need Analysis' {
      System.debug('Probablity Percentage is: ' + 0.3);
   }
   when 'Closed Won'{
      System.debug('Probablity Percentage is: ' + 1.0);
   }
   when 'Closed Lost' {
      System.debug('Probablity Percentage is: ' + 0);
   }
   
}


