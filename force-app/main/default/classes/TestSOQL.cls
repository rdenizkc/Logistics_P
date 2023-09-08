public class TestSOQL {
    public static void query1(){ 
        
    List<Account> myList = new List<Account> ([SELECT Name, Phone FROM Account]);
    
 //    List <Account> myList = [SELECT Name, Phone FROM Account];
           // 1   
 
        system.debug(myList);
    //2 
      
        for(Account w: myList){
            
            system.debug(w);
        }
    //3
    
        Map<Id,Account> myMap=New  Map<Id,Account>([SELECT Name, Phone FROM Account]);
         
        for (Object w: myMap.values())
        {
        system.debug(w);}
        
        
   } 
    
}