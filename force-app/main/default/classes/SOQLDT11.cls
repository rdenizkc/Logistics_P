public class SOQLDT11 {

    
    //create 6 account records with different names by using loop...
    //call the records and update Rating fields as "Hot"
    //And create 5 other records with Rating "Warm" by using for loop   
    //for the records yesterday:
    //if you enter 'Category1' into parameter, display records with Rating 'Hot'
    //If you enter 'Category2' into the parameter, display records with Rating 'Warm'
    //if you enter 'Category3' into parameter, display records whose name contains acc
    //if you enter 'Category4' into parameter, display records whose name not contains acc
     

    public static void workWithData(){ //insert
         //create 6 account records with different names by using loop...
       
        List<Account> accounts = new List<Account>();//store accounts after each loop and insert list at the end
        for(Integer i=1; i<7; i++){
          
           Account acc = new Account(Name = 'Account' +i); 
           accounts.add(acc);            
        }
        insert accounts; //6 account records......
        System.debug(accounts);              
     
    }    
    
   public static void updateRatingField(){ //update rating field of the records created before
        
        String accName = 'Acc%';
        
     List<Account> accToUpdate = [SELECT Id, Name FROM Account WHERE Name LIKE:accName];
        
        for(Account w : accToUpdate){
            w.Rating='Hot';
        }
        update accToUpdate;
        System.debug(accToUpdate);
    }
    
      public static void insertOtherAcc(){ //insert 5 other records with Rating 'Warm'
        
        
        List<Account> accounts = new List<Account>();
        for(Integer i=7; i<12; i++){
             Account acc = new Account(Name = 'Account' +i, Rating='Warm'); 
           accounts.add(acc);  
        } 
        Database.insert(accounts);
        
    }
     //for the records from yesterday on:
    //if you enter 'Category1' into parameter, display records with Rating 'Hot'
    //If you enter 'Category2' into the parameter, display records with Rating 'Warm'
    //if you enter 'Category3' into parameter, display records whose name contains Acc
    //if you enter 'Category4' into parameter, display records whose name not contains Acc
    public static void displayRecordsByCategory(String enterCategory){
       List<Account> myQuery = new List<Account>();
        
        if(enterCategory.equals('Category1')){
          myQuery = [SELECT Name, Rating, Industry FROM Account WHERE Rating='Hot' AND  CreatedDate >= YESTERDAY];
            
        }else if(enterCategory.equals('Category2')){
            
           myQuery = [SELECT Name, Rating, Industry FROM Account WHERE Rating='Warm' AND  CreatedDate >= YESTERDAY];
        
        }else if(enterCategory.equals('Category3')){
            
             myQuery = [SELECT Name, Rating, Industry FROM Account WHERE Name LIKE 'Acc%'  AND  CreatedDate >= YESTERDAY];
        }else if(enterCategory.equals('Category4')){
            myQuery = [SELECT Name, Rating, Industry FROM Account WHERE CreatedDate >= YESTERDAY AND (NOT Name LIKE 'Acc%')];
        }else{
            System.debug('Please enter a valid category!');
        }
       for(Account w : myQuery){
            System.debug('Account Name is '+ w.Name + 
                        ' - ' + 'Account Rating is ' + w.Rating +
                        ' - ' + 'Account Industry is ' + w.Industry);
        } 
        
    }
}