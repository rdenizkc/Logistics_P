public class SOQLDT6 {
 
    //Practice 5: Fetch Name, Phone, Rating for given account names
    //'GenePoint', 'Burlington Textiles Corp of America', 'sForce', 'Dickenson plc' 
    
    public void dataBinding(){
        
        //1. Way: Not recommended bcs there is repetition
      List<Account> r1 =  [SELECT Name, Phone, Rating 
                                            FROM Account
                                            WHERE Name= 'GenePoint'
                                            OR Name = 'Burlington Textiles Corp of America'
                                            OR Name = 'sForce'
                                            OR Name = 'Dickenson plc'];
      
        
        System.debug(r1);
        for(Account w : r1){
        System.debug(w);
        }
        
       //2.Way: Better way
       
         List<Account> r2 =  [SELECT Name, Phone, Rating 
                                            FROM Account
                                            WHERE Name IN ('GenePoint',
                                             'Burlington Textiles Corp of America',
                                             'sForce',
                                             'Dickenson plc')];
        System.debug(r2);
        for(Account w : r2){
        System.debug(w);
        }
        
        
        //3. Way: The Best Way is using "data binding" to bind variables...
       
        //First I put my names into a string collection (list)
        List<String> accNames = new List<String>{'GenePoint',
                                             'Burlington Textiles Corp of America',
                                             'sForce',
                                             'Dickenson plc'};
                                                 
            //the I type query and use "data bindig" to bind previously created list with filter part in Query                                     
            List<Account> r3 = [SELECT Name, Phone, Rating
                                    FROM Account
                                    WHERE Name IN :accNames];
       
        for(Account w : r3){
            System.debug(w);
        }
        
        //Note: "Binding Variables" can be used with "IN", "NOT IN", "=", "!="
        //Note: "IN" and "=" are the same, "NOT IN" and "!=" are the same 
    }
}