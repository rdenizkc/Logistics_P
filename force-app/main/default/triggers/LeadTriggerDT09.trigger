trigger LeadTriggerDT09 on Lead (after undelete) {
    
    //Example 10: When a lead record is restored from rcycle bin, print 
    //Print a message on the console 'Record is restored!'

    if(Trigger.isAfter && Trigger.isUndelete){
        
        for(Lead w : Trigger.new){
        
        System.debug(w.Company + ' > The Record is restored!');
    }
    
    //when a record is in recycle bin:
    //you can do undelete operation
    //in undelete, there is only after undelete
    //there is only trigger.new.....
        
        
    }
    
    
}