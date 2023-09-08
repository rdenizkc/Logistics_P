trigger LeadTriggerDT02 on Lead (before insert, before update) {

//Example 3: When a new lead record is being created and updated;
//and if Industry field is blank, assign 'Education' to the Industry Field
 
    for(Lead w : Trigger.new){
        if(String.isBlank(w.Industry)){
            
            w.Industry= 'Education';
        }
        
    }
}