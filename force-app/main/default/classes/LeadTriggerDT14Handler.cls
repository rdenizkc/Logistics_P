public class LeadTriggerDT14Handler {

    
    public static void afterUpdateLead(List<Lead> myLeads){
        
        
        List<Task> myTasks = new List<Task>();
            for(Lead w : myLeads ){
                
                if(w.Industry == 'Education'){
                    Task taskObj = new Task(Subject='The task is created after lead is updated!', WhoId = w.Id); 
                    myTasks.add(taskObj);
                }
            }
            insert myTasks;        
    }

}
//NOTE: 
//In handler class: we took active code block from trigger and handled in apex class.
//in condition statement of Trigger; we called apex handler class and method
//So Trigger.new is sent from trigger to handler when the operation is fired....
//And Iteration, assignments, collections are created in handler...
//To create well organized trigger files and reusable handler classes, we separated trigger into trigger and handler....