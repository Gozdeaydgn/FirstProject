public class AccountUpdateAsync implements Queueable{
    
    String description ; 
    List<Account> accLstToProcess ; 


    public AccountUpdateAsync(String description, List<Account> accLstToProcess) {
        this.description = description ; 
        this.accLstToProcess = accLstToProcess ; 
    }


    public void execute(QueueableContext context) {
        // awesome code here
        System.debug('Running some awesome code in AccountUpdateAsync'); 
        // print out value of description field 
        System.debug('description value is : ' + this.description);

        // update the description field of the List of account to 
        // the description provided. 

        for(Account each : accLstToProcess) {
            
            each.Description = this.description ; 

        }
        //for döngüsü, accLstToProcess listesindeki her Hesap nesnesi üzerinde yinelenir 
        //ve her Hesabın Açıklama alanını this.description değeriyle günceller.

        update accLstToProcess ; 
        //Açıklama alanlarını güncelledikten sonra satır güncelleme accLstToProcess;
        // veritabanındaki hesapları güncellemek için bir DML işlemi gerçekleştirir.


        // Right after we are done with account update 
        // we want to perform another aysnc code 
        // that need to happen right after account update

        TaskAfterAccountUpdate tq = new TaskAfterAccountUpdate(); 
        System.enqueueJob(tq); 
        //Son olarak System.enqueueJob(tq); yeni oluşturulan TaskAfterAccountUpdate örneğini Apex iş kuyruğuna ekler 
        //ve mevcut iş tamamlandıktan sonra eşzamansız olarak yürütülmesini planlar.

        
    }



}