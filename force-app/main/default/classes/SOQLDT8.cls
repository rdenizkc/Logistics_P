public class SOQLDT8 {
    //fetch some records from database and do updates on them
  
    public void updateTheRecord(){
      //Update accounts with the name of "Batch166-167 DT"  
     
        String accName = 'Batch166-167 DT';
        
 List<Account> accList= [SELECT Id, Name, Phone FROM Account WHERE Name=:accName]; 
        //When you bind a single container variable into a query> use "=:" 
        
        for(Account w : accList){
            w.Name = 'Batch166-167 DT updated 2nd time';
            w.Phone = '987654';
            
        }
        
        update accList;
       //Database.update(accList);
       //Database.update(accList, false); > This syntax allows partial success.. if some of the records have problem, others can be updated...
       //Database.update(accList,true); > does not allow patial success
        System.debug(accList);
               
    }
    
}