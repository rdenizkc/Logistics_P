@isTest
public class AccountProcessorTest {
           
    @isTest
    public static void countContactsTest(){
        List<Account> accList = new List<Account>(); // empty list to collect the account objects to be inserted.
            for(Integer i=0; i<10; i++){
                Account acc = new Account(); //write your instance first
                acc.Name = 'TestAccount'+i;
                acc.Phone = '1234'+i;
                accList.add(acc);
            }
            insert accList;
        List<Contact> conList = new List<Contact>();
        List<Id> accIds = new List<Id>(); // To store the account Ids.
        for(Account acc : accList){
            for(Integer i=0; i<5; i++){
                Contact con = new Contact(); //Create contacts under each Account.
            	con.FirstName = acc.Name+i;
            	con.LastName = 'TestContactLastName'+i;
            	con.AccountId = acc.Id;
                conList.add(con);
                accIds.add(acc.Id);
            }
        }
        insert conList;
        Test.startTest();
        AccountProcessor.countContacts(accIds);
        Test.stopTest();
        
        //Need to do assertion now.
        List<Account> accounts = [SELECT Id, Number_of_Contacts__c FROM Account];
        System.assertEquals(5, accounts[0].Number_of_Contacts__c , 'Contacts are not counted correctly. Please check your code again');
        
    }
}