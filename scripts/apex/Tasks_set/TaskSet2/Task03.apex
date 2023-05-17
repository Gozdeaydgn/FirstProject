/*3. Write an Apex that store 2 Booleans value into isBaby1Laughing, isBaby2Laughing
   - if both value true print out 'both laughing'
   - if only isBaby1Laughing then print out 'only first baby laughing'
   - if only isBaby2Laughing then print out 'only second baby laughing'
   - else print 'no babies are laughing'
*/

Boolean isBaby1Laughing = true;
Boolean isBaby2Laughing = false;
// exclusive to boolean variables only in conditional statement
// you do not have to use ==true to check for equality
// you can simply use the variable name itself and it will do the same

if (isBaby1Laughing && isBaby2Laughing) {
  System.debug('Both are laughing ');
} else if (isBaby1Laughing) {
  System.debug('Only Baby 1 is laughing');
} else if (isBaby2Laughing) {
  System.debug('Only Baby 2 is laughing');
} else {
  System.debug('No babies are laughing');
}

if (isBaby1Laughing == isBaby2Laughing) {
  System.debug('Both are in same mood');
} else {
  System.debug('Both are not in same mood');
}
