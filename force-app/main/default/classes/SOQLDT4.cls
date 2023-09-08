public class SOQLDT4 {
    
   //Practice 3: Type query to see minimum and maximum number of employees,
   //				and average number of employees for account object
 
    public static void queryDT(){

        //when you use aggregate functions: you can use AggregateResult data type. It is a Salesforce Object
       
        
        //1.Way
   AggregateResult[] results = [SELECT MIN(NumberOfEmployees), MAX(NumberOfEmployees), AVG(NumberOfEmployees) FROM Account];
        System.debug(results); // (AggregateResult:{expr0=120, expr1=145000, expr2=22997.30769230769}) 
        
        
        
        //lets display MIN, MAX, AVG values one by one...
        Object minValue = results[0].get('expr0'); 
        System.debug('Minimum Value: ' + minValue);
        
        
        //display MAX on the console....
        Object maxValue = results[0].get('expr1'); 
        System.debug('Maximum Value: ' + maxValue);
        
        
        //diplay the average on the console....
        Object avgValue = results[0].get('expr2'); 
        System.debug('Average Value: ' + avgValue);
        
        //records have indexes in array... but we have one single record here.. so we will use index 0 to reach out max, min and avg values...
        
        
        //2.Way... give nicknames for each aggregate result values..
       
         AggregateResult[] results1 = [SELECT MIN(NumberOfEmployees)min, MAX(NumberOfEmployees)max, AVG(NumberOfEmployees)avg FROM Account];
        //we can assign "alias" (nickname) for aggregate results... min, max, average
        System.debug(results1); // (AggregateResult:{min=120, max=145000, avg=22997.30769230769})
        
        
       Object minValue1 = results1[0].get('min'); //instead of system default expressions, we will call values by using expressions we assigned
      	System.debug('Minimum Value1: ' + minValue1);
        
        Object maxValue1 = results1[0].get('max'); 
      	System.debug('Maximum Value1: ' + maxValue1);
        
       Object avgValue1 = results1[0].get('avg'); 
      	System.debug('Average Value1: ' + avgValue1); 
        
        
        /*
         When a SQOL query contains Aggregate Functions, use "AggregateResult[]" array to store records
		Bcs AggregateResult[] will display fields one by one.
          */
        
  		 List<Object> result2 =  [SELECT MIN(NumberOfEmployees), MAX(NumberOfEmployees), AVG(NumberOfEmployees) FROM Account];
        System.debug(result2);
        
         List<Object> result3 =  [SELECT MIN(NumberOfEmployees)min, MAX(NumberOfEmployees)max, AVG(NumberOfEmployees)avg FROM Account];
        System.debug(result3); 
        
        List<AggregateResult> result4 =  [SELECT MIN(NumberOfEmployees)min, MAX(NumberOfEmployees)max, AVG(NumberOfEmployees)avg FROM Account];
        System.debug(result4); 
        
        /*
    	i) Object Class is the parent class of every class in Apex, like "Adam" is the parent of every person
		ii) Every class has parent in Apex except Object Class... Object does not have any parent like "ADAM"
		iii) Every data type can be defined as Object's kids 	
		iv) instead of AggregateResult, you can not type Account but you can type Object... 
			bcs Account and AggregateResult are same level objects...
		*/ 
       
  } 
    
    
    
 //Practice 3.1: Create a method and..
 //calculate minimum, maximum, total, values of number of employees
 //..per industry in Account object    
    
    public static void aggResult(){

         AggregateResult[] groupedResult =  [SELECT Industry, 
                                           MIN(NumberOfEmployees)min, 
                                           MAX(NumberOfEmployees)max, 
                                           SUM(NumberOfEmployees)sum
                                            FROM Account 
                                             GROUP BY Industry];
        
   System.debug(groupedResult);
   
    Object resultIndex5 = groupedResult[5];
    System.debug(resultIndex5); //AggregateResult:{Industry=Education, min=39000, max=39000, sum=39000.0}
        
        //to read min value from 6th row...
       Object resultIndex5Min = groupedResult[5].get('min');
    System.debug(resultIndex5Min);
        
        
    }
}