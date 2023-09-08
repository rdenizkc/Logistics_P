public class SOQLDT10 {

    //create an Account record including phone and rating
    //and insert to the database....
    public static void methodDML(){
        
        Account acc1 = new Account(Name='Test1', Phone='00061');
        acc1.Rating = 'Hot';
        Database.insert(acc1); //single record will be inserted...
        System.debug(acc1);
        
        Account acc2 = new Account(Name='Test2');
        Account acc3 = new Account(Name='Test3');
        Account acc4 = new Account(Name='Test4');
        Account acc5 = new Account(Phone='5233'); //required field is missing
        
        List<Account> accList = new List<Account>{acc2, acc3, acc4, acc5};
        Database.insert(accList, false); //allows partial success
        System.debug(accList);
    } 
   
    
}