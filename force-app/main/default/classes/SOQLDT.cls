public class SOQLDT {
    
    public String s = '123';
    public Object z = 111;
    
    public static void queryTask(){
        
        //Retrieve all account names and phones 
     /*	List<Object> myList =  [SELECT Name, Phone FROM Account];*/
        List<Account> myList = new List<Account>([SELECT Name, Phone FROM Account]) ;
      
     // List<Account> myList =  [SELECT Name, Phone FROM Account];
        
        
        //i) Print them in a single line
        System.debug(myList);
       
        
               
        //ii) Print account details one by one in different lines         
        for(Account w : myList){
            System.debug(w);
        }
                
        
        
       //iii) Store the results in a Map 
        Map<Id, Account> myMap = new Map<Id, Account>([SELECT Name, Phone FROM Account]);
		System.debug(myMap);   
        //We put "Id" data type for the key part in Map. Bcs in salesforce Id is always Unique
        //Other fields may or may not be unique... that is why I use Id for the key when I create the Map for Salesforce objects...
        //in this scenario; all the result are printed in a single line on the console...
        
        
        
        //to make it readable on the console
        for(Account w : myMap.values()){
            System.debug(w);
        }
        //we can not iterate the map in the loop directly, 
        //so we will take values() from the map and send them to the loop
        //by using values() method we take the values from the map and values return as a list
        //finally I can iterate values..
    }   
}