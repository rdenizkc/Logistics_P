public class AccountTrigger2Handler { 
    public static void afterUpdate(Map<Id, Account> newAccount, Map<Id, Account> oldAccounts){
       
       set<Id> accountIds = new Set<Id>();
      
        for(Account newAcc : newAccount.values()){ 
       Account oldAcc = oldAccounts.get(newAcc.Id) ;   
       
            if(oldAcc.Rating != newAcc.Rating){
                 accountIds.add(newAcc.Id);  
            }
        }
              
    }
         public static void updateCasePriority( set<Id> accountIds){
                
            List<Case>  cases=[SELECT Id, Priority, Account.Rating FROM Case
                                WHERE AccountId IN:accountIds];
                
            } 
        
    }