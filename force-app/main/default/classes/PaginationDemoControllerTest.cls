@isTest
public class PaginationDemoControllerTest {
    
    @testSetup
    static void setup() {
        // Create test data for Contacts
        List<Contact> contacts = new List<Contact>();
        for (Integer i = 0; i < 10; i++) {
            contacts.add(new Contact(
                LastName = 'Test' + i,
                Email = 'test' + i + '@example.com',
                Phone = '1234567890',
                Department = 'Department' + i
            ));
        }
        insert contacts; 

        // Create test data for Accounts
        List<Account> accounts = new List<Account>();
        for (Integer i = 0; i < 10; i++) {
            accounts.add(new Account(
                Name = 'Test Account' + i,
                Type = 'Customer',
                Rating = 'Hot'
            ));
        }
        insert accounts;
    }

    @isTest
    static void testGetContacts() {
        Test.startTest();
        List<Contact> contacts = PaginationDemoController.getContacts();
        Test.stopTest();
        
        System.assertNotEquals(0, contacts.size(), 'Contacts should not be empty');
    }

    @isTest
    static void testGetAccounts() {
        Test.startTest();
        List<Account> accounts = PaginationDemoController.getAccounts(5, null);
        Test.stopTest();
        
        System.assertEquals(5, accounts.size(), 'Accounts size should be 5');
    }

    @isTest
    static void testGetAccountsWithLastRecordId() {
        List<Account> allAccounts = [SELECT Id FROM Account ORDER BY Id LIMIT 10];
        String lastRecordId = allAccounts[4].Id;

        Test.startTest();
        List<Account> accounts = PaginationDemoController.getAccounts(5, lastRecordId);
        Test.stopTest();
        
        System.assertEquals(5, accounts.size(), 'Accounts size should be 5');
        //System.assertTrue(accounts[0].Id > lastRecordId, 'First account Id should be greater than lastRecordId');
    }

    @isTest
    static void testGetTotalAccountsCount() {
        Test.startTest();
        Integer totalAccountsCount = PaginationDemoController.getTotalAccountsCount();
        Test.stopTest();
        
        System.assertEquals(10, totalAccountsCount, 'Total accounts count should be 10');
    }
}