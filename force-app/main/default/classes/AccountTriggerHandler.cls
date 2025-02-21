public class AccountTriggerHandler extends TriggerHandler{

    static List<Account> listNew = new List<Account>();
    static List<Account> listOld = new List<Account>();
    static Map<Id, Account> mapOld = new Map<Id, Account>();

    public AccountTriggerHandler() {
        listNew = (List<Account>) Trigger.new;
        if(Trigger.isUpdate) {
            listOld = (List<Account>) Trigger.old;
            mapOld = (Map<Id, Account>) Trigger.oldMap;
        }
    }

    public override void beforeInsert() {
        inserindoConta();
    }

    public override void beforeUpdate() {

    }

    public override void beforeDelete() {

    }

    public override void afterInsert() {
        
    }

    public override void afterUpdate() { 
    }

    public override void afterDelete() {
    }

    public override void afterUndelete() {
    }

    private static void inserindoConta() {
        List<Account> accList = new List<Account>();
        
        if (Trigger.isInsert) {
            for (Account acc : listNew) {
            acc.Type = 'Prospect';
            acc.Rating = 'Hot';
            accList.add(acc);
            }
        }
    }    
    
}