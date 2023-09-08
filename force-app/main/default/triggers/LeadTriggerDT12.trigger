trigger LeadTriggerDT12 on Lead (before insert, after insert) {
    
    //Example12: When a lead record is being created;
    //if LeadSource is empty, assign 'Other', 
    //And create a task for lead record...
    //So call created records on anonymous window

    // Lets say 100 lead records created.......
      
    switch on Trigger.operationType{
        when BEFORE_INSERT{
            
            
        for(Lead w : Trigger.new){
            if(String.isBlank(w.LeadSource)){
                w.LeadSource = 'Other';
          }        
        }           
      }
        when AFTER_INSERT{
            
             List<Task> taskList = new List<Task>();
        
        for(Lead w : Trigger.new){
            
            Task taskObj = new Task(Subject = 'New Lead Record is created...', WhoId = w.Id); //we connected newly created lead records and tasks by ID.
            taskList.add(taskObj);  
            
            System.debug(w.LastName + ' - ' + w.LeadSource);
        }
        insert taskList;  
            
            
        }
    }   
}