public class SOQLDT2 {
	
    	//Practice 1: Find (the account name, account rating
		//and contact name, contact department, contact title,
		//and case number, case subject) for every Contact

    public void soql2(){
        //Main (super) query is in Contact Object
        //for Account fields we will go from Contact to Account (child to parent)
        //for Case fields we will go from Contact to Case (Parent to Child) so parenthesis is needed.
   
        
        List<Contact> myConts = [SELECT Account.Name, Account.Rating,
            
            	Contact.Name, Contact.Department, Contact.Title,
            
            	 (SELECT CaseNumber, Subject FROM Cases)
            
            FROM Contact];
           
      
        
        //Print all the records in different lines on the console.....
        for(Contact w : myConts){
            System.debug(w);
        } //we will not see case details in printed records.. and we will not see account name and rating..
          //..we can see details only from main Object. 
          //1) no parent detail!!!  2) no child details!!!!
          //this is an issue and we need to solve by printing other details.. but how?
          
        //How to see parent object details (we should indicate details in debug...)
        for(Contact w : myConts){
            System.debug('Account Name: ' + w.Account.Name + ' - Account Rating: '+ w.Account.Rating);
        }
        
      /* 
       * for same line
       * for(Contact w: myConts){
        
        system.debug(w + ' Account.Name:'+ w.Account.Name +' Account.Rating:'+ w.Account.Rating );
    }
     */ 
        
        //How to see child object details...
        for(Contact w : myConts){ // "w" contains main query...
            
            
            for(Case k : w.Cases){ //fetch sub query from main query and send to the loop!
                
                System.debug('Case Number: ' + k.CaseNumber + ' - Case Subject: ' + k.Subject);
            }
        }
        //to be able to go from parent to child: you need to use nested loop... inner loop is for inner query...
        
        
    }    
}