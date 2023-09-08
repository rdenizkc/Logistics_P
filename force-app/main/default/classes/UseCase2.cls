public class UseCase2 {
    
   public Integer getAverage(Integer num1, Integer num2){
       
       Integer sum=0, 					counter=0;
        
        
       	 Integer avg;
        	
        
        	for(Integer i=num1; i<=num2; i++){
            
            
         	   sum = sum+i;
            
         		  counter++;
            
            
        }
        
        avg = sum/counter;
        System.debug('Average of number between '+num1+ ' and '+num2+ ' is ' +avg);
        return avg;
    }
}
    
    
   /*
     public static void getPerfectAverage(integer num1,integer num2){
         
        
        integer sum =0;
        
        integer numOfNumber = num2 - num1 + 1 ;//it is a math formula for counting
        
        for(integer i=num1; i < num2+ 1; i++)  {
            
          sum+=i;
            
           
        } System.debug(sum / numOfNumber );
    }
 
} 

*/