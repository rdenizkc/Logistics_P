@isTest
public class TaskUtilTest {
    @isTest
    public static void testGetTaskPriority(){
        String pri=TaskUtil.getTaskPriority('NY');
        
      System.assertEquals('Normal', pri);
        
    }
    
    @isTest
    Public static void testGetTaskPriorityHigh(){
        
     string pri=TaskUtil.getTaskPriority('CA');  
        system.assertEquals('High', pri);
    }
   
    Public static testMethod void testGetTaskPriorityNull(){
        String pri=TaskUtil.getTaskPriority('');
        System.assertEquals(Null, pri);
        String pri2=TaskUtil.getTaskPriority('ABC');
        System.assertEquals(Null, pri2); 
    }
    
 }