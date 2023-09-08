public class SOQLDT10DENEME {
// databese==>true kullandigim icin hata verdi. hic bir account u olustrmadi.

    //create an Account record including phone and rating
    //and insert to the database....
    public static void methodDML(){
        
        Account acc1 = new Account(Name='Test11', Phone='00061');
        acc1.Rating = 'Hot';
        Database.insert(acc1); //single record will be inserted...
        System.debug(acc1);
        
        Account acc2 = new Account(Name='Test21');
        Account acc3 = new Account(Name='Test31');
        Account acc4 = new Account(Name='Test41');
        Account acc5 = new Account(Phone='5233'); //required field is missing
        
        List<Account> accList = new List<Account>{acc2, acc3, acc4, acc5};
        Database.insert(accList, True); //allows partial success
        System.debug(accList);
    } 
   
    
}