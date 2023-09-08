public class Collections {
    
    public static String listAssignment(Integer monthNum){ //valid entries from 1 to 12 for months...
        
        List<String> listMonth = new List<String>{'January', 'February','March',
            'April', 'May', 'June', 'July', 'August', 
            'September','October', 'November', 'December'};
        
                String outputMonth; //null at the beginning. but selected month will be assigned in it. 
        
        if(monthNum >0 && monthNum <= listMonth.size()){
            
          outputMonth = listMonth.get(monthNum-1); //now we assigned the selected month into previously created container!
        
            System.debug(outputMonth);
            return outputMonth;
            
            
        }else{
       
            outputMonth = 'Not a valid month number!';
            System.debug(outputMonth);
            return outputMonth;
            
            /*
             System.debug('Not a valid month number!');
			return 'Not a valid month number!';
             */ 
           
        }
    }

}