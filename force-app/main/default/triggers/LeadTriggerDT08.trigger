trigger LeadTriggerDT08 on Lead (before delete) {
    
           //Example 9: When a lead record is being deleted, 
           //use company name to print the record is deleted...
            
    //before delete & trigger old will be used...
    
    if(Trigger.isBefore && Trigger.isDelete) { 
        
    for(Lead w: Trigger.old)  {
    
        system.debug('Deleted Company Name : ' + w.Company);
        
    }  
    }
}