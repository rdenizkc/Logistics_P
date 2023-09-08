trigger LeadTriggerDT on Lead (before insert) { //the records to be inserted will stored in Trigger.new list.
    
    //Example 1: when a user creates a lead record; 
    //before creating the record; lead rating should be assigned 'Cold' 
    System.debug('Hello Trigger World');
    
    for(Lead w : Trigger.new){
        w.Rating = 'Cold';
        
    }
    
}