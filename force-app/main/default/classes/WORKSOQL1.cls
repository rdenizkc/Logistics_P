public class WORKSOQL1 {
    
   
//Practice 6: Call Name and Rating of account records 
    //Put a limitation to display records
    //enter limitation values by method parameters...
    
    public static void task(integer lmt , integer offst){
        List<Account> myList=[SELECT Name, Rating FROM Account Limit :lmt Offset :offst];
        
        
    }
    
    
    public static void methodinsert(){
        
        Lead myLead= new Lead(FirstName='Test1',LastName='abc',Company='zxc', Phone='098765');
        myLead.Rating='Hot';
        Database.insert(myLead);
        system.debug(myLead);
        
        
         Lead myLead2= new Lead(FirstName='Test2',LastName='abc',Company='zxc');
         Lead myLead3= new Lead(FirstName='Test3',LastName='abc',Company='zxc');
         Lead myLead4= new Lead(FirstName='Test4',LastName='abc',Company='zxc');
         Lead myLead5= new Lead(Phone='Test2');
        
        List<Lead> leadList= new List<Lead>{myLead2,myLead3,myLead4,myLead5};
        Database.insert(leadList, false);  
        system.debug(leadList);
    }
    
    
    public void methodDelete(){
        List<Lead> deleteLead=[SELECT Id FROM Lead where Company='zxc'];
        database.delete(deleteLead, false);
    }
}