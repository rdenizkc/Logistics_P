trigger LeadTriggerDT14 on Lead (after update) {
    
    //Example 14: When a lead record is updated, 
    //Create a task only when Industry is education...

    
    switch on Trigger.OperationType{
        when AFTER_UPDATE{
            
        LeadTriggerDT14Handler.afterUpdateLead(Trigger.new);
        }
        
    }
    
}