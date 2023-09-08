trigger LeadTriggerDT07 on Lead (before update) {
    
    //Example 8: Go to a lead record, print new lastname and old lastname of the lead record on the console
    




   if(Trigger.isBefore && Trigger.isUpdate){
        
        for(Lead w : Trigger.new){
            System.debug('new lastname of Lead: ' + w.LastName);
            System.debug('old lastname of Lead: ' + Trigger.oldMap.get(w.Id).LastName );
        }     
        }
    }
    
  // BEFORE UPDATE: we use Trigger.new to iterate
// but we can also reach out trigger.old in before update..
//so we are able to print trigger.old version fields on the console...


//BEFORE DELETE: There is only Trigger.old