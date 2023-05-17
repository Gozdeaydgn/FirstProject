public class AccountHandler {
    
    public static Account insertNewAccount(String accName) {
        Account a = new Account(Name = accName);
    
        try {
          insert a;
          System.debug('everything is great');
          return a;
        } catch (Exception e) {
          System.debug('ERROR OCCURED !!!!');
          return null;
        }
        
      }

}