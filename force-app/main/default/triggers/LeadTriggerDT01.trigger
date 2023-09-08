trigger LeadTriggerDT01 on Lead (before insert) {
    
    //Example2: when a user is creating a lead record, check lead source;
    //if it is blank; assign value of 'Other' to lead source..

    for(Lead w : Trigger.new){
        
        if(String.isBlank(w.LeadSource)){ //conditionally asign a value to leadsource! not in any case!
            w.LeadSource = 'Other';
            
        }// "w" represents one single record coming from Trigger.new list in every loop
        // and in "w", I will look at the Lead Source field if it is blank or not!  
        
    }    
    
}