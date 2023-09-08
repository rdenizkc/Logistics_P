public class SOQLDT3 {

    
    	//Practice 2: Find (the account name, account rating, account industry
		//and contact name, contact department, contact title,
		//and opportunity name, opportunity amount) for every Contact

    public void soql3(){
        
     List<Contact> myContacts = [SELECT Account.Name, Account.Rating, Account.Industry,
          
          	Contact.Name, Contact.Department, Contact.Title,
          
          	(SELECT Opportunity.Name, Opportunity.Amount FROM Opportunities)
          
          FROM Contact];
        
        //How to see main object details / and add parent obj details to print!
        for(Contact w : myContacts){
       System.debug(w + ' - Account Name: ' + w.Account.Name + ' - Account Rating: ' + w.Account.Rating + ' - Account Industry: ' + w.Account.Industry);
              
        
        }	//Main Object Details			+ 			 Parent Object details
        
        //Print child object details below.......
        for(Contact w : myContacts){
            
            //to be able to display subquery fields from child: we need nested loop below
            for(Opportunity o : w.Opportunities){
                System.debug('Opportunity Name: ' + o.Name + ' - Opportunity Amount: ' + o.Amount);
                
            }
        }
        
    }
  
    
}