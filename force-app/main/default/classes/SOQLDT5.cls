public class SOQLDT5 {
    //Practice 4. Calucalate average number of employees per Industry 
    //and print the rows on the console one by one...
    public static void aggResult(){
        
        AggregateResult[] result = [SELECT Industry, AVG(NumberOfEmployees)avg FROM Account GROUP BY Industry];
      
        
        //1.way: Recommended
        //i) General Practice is typing less code inside the loop parenthesis
        //ii)If you put the query inside the loop parenthesis,.. 
        //...you cannot use the result out of the loop 
    for(AggregateResult w : result){
        System.debug(w.get('Industry') + ' - ' + w.get('avg'));      
    }
        
        
        
        //2.Way: Not recommended...
        for(AggregateResult w : [SELECT Industry, AVG(NumberOfEmployees)avg FROM Account GROUP BY Industry]){
            
             System.debug('2.Way: ' + w.get('Industry') + ' - ' + w.get('avg'));
        }
     
    }
    

}