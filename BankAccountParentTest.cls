@isTest
public class BankAccountParentTest
{
	public static testMethod void main()
    {
        /*SavingAccount newaccount = new SavingAccount('BashettyNaveen',100,5000,500);
        newaccount.accountDetails();
        newaccount.depositAmount(500);
        newaccount.showBalance();
        newaccount.withdrawAmount(500);
        newaccount.showBalance();*/
        SavingAccount newaccount = new SavingAccount();
        newaccount.setValues('BashettyNaveen1',101,10000,1000);
        newaccount.accountDetails(); 
        newaccount.depositAmount(500);
        newaccount.showBalance();
    } 
}