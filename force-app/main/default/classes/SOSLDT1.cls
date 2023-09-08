public class SOSLDT1 {
   

    //If any Account or Contact record has "GenePoint" in any field
    //return Account name, and Contact firstname & lastname
    
    
    

    Public static void SOSL01(){
        
       List<List<object>> myList=[ FIND 'GenePoint' IN ALL FIELDS RETURNING Account(Name), Contact(FirstName, LastName, Email)];
        System.debug(myList);
    }
    
    //If any Account or Contact record has "United" in any field
//return Account Name, Industry and Contact firstname & lastname & email
    
    public void SOSL02(){
        
        //copy the part between lessthan and greaterthan sign, and put inside the loop parenthesis
   List<List<sObject>> myList = 
       [FIND 'United' IN ALL FIELDS RETURNING Account(Name, Industry), Contact(FirstName, LastName, Email) ];    
        
        System.debug(myList); //in a single line
        for(List<sObject> w : myList){
            //when we send nested list into the loop, we use that structure as data type in loop
           	//copy the part between lessthan and greaterthan sign, and put inside the loop parenthesis
            
            System.debug(w);
        }
    }
}