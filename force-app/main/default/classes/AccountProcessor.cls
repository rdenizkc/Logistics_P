public class AccountProcessor {
    @Future
    public static void countContacts(List<Id> accountIds){
        //get the accounts first with their child contacts
        List<Account> accounts = [SELECT Id, Number_of_Contacts__c, (SELECT Id FROM Contacts)
                                  FROM Account WHERE Id IN:accountIds];
        //Now we got all the accounts and its respective contacts children.
        //Lets iterate the accounts list now.
        for(Account acc : accounts){
            acc.Number_of_Contacts__c = acc.Contacts.size(); // you are entering number of contacts in the Number_OfContacts__c field.
        }        
        update accounts;  //You are hitting the save button here
    }
    
}
        
    


//Dot notation or inner Query?
//Dot Notation is used to get the Parent record. which means you are going from child to parent and you will get one record because you have only one parent.
//However, Inner query is used to get the child record(s) which means you are going from parent to child and you may have more than one child( because you are doing an inner query)
//
// = or IN?
//  We use = if we are binding one single record if we use a collection we use IN.