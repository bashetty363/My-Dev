//BankAccount test class
@isTest
public class BankAccountTest{
    //main method
    public static testmethod void main()
    {
        BankAccount.getAccounts();
        BankAccount account=new BankAccount('Bashetty Naveen',328,500);
        account.creditBal(100);
 		account.getValues();
        BankAccount.getAccounts();
        BankAccount account1=new BankAccount();
        account1.setValues('nilofer', 1234, 2500);
        account1.getValues();
        account1.debitBal(500);
        account1.showBalance();
        BankAccount.getAccounts();
	}//end of main method

}//end of test class