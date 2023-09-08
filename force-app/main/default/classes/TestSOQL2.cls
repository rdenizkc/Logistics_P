public class TestSOQL2 {
    
    
    
    Public static void guery2(){
        
        List<Contact> myList= [SELECT Account.Name, Account.Rating,
                              Contact.Name, Contact.Department, Contact.Title, 
                              (SELECT CaseNumber, Subject FROM Cases)
                              FROM Contact];
        
        
        //TO FIND CHILD OBJECT DETAIL
        
        for(Contact w: myList) {
            
            for(Case k : w.Cases){ 
                
                system.debug(k);
            }
            
        }
    }

}