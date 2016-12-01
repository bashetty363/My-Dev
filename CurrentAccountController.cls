public class CurrentAccountController extends SavingAccount1{
    public CurrentAccountController()
    {
        with_amt=0;
        acc_min_balInput=acc_balInput=acc_noInput=dep_amt=0;
        acc_nameInput=acc_org_nameInput='no name';
    }
    public String acc_org_nameInput{get;set;}
    public String getacc_org_name()
    {
        String acc_org_name=acc_org_nameInput;
        return acc_org_name;
        
    }
    public  override PageReference saveAccount() {
        Book__c book = new Book__c();
        book.Name=acc_nameInput;
        book.Author__c=acc_org_nameInput;
        book.Edition__c=acc_min_balInput;
        book.Price__c=acc_balInput;
        insert book;
        return null;
    }
    
}