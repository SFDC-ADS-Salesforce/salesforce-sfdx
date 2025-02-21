@isTest
public class AccountTriggerHandlerTest {
    @testSetup
    static void setup() {
        List<Account> accounts = new List<Account>();
        for (Integer i = 0; i < 5; i++) {
            accounts.add(new Account(Name = 'Test Account ' + i));
        }
        insert accounts; 
    }
    
    @isTest
    static void testAfterInsert() {
        Test.startTest();
        Account acc = new Account(Name = 'New Account');
        insert acc;
        Test.stopTest();
        
        // Verifica se os campos foram atualizados corretamente
        Account insertedAcc = [SELECT Type, Rating FROM Account WHERE Id = :acc.Id];
        System.assertEquals('Prospect', insertedAcc.Type, 'O campo Type não foi atualizado corretamente');
        System.assertEquals('Hot', insertedAcc.Rating, 'O campo Rating não foi atualizado corretamente');
    }
    
    @isTest
    static void testAfterUpdate() {
        Account acc = [SELECT Id, Name FROM Account LIMIT 1];
        acc.Name = 'Updated Account';
        Test.startTest();
        update acc;
        Test.stopTest();
    }
}
