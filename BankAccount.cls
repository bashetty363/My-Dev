//BankAccount class
public class BankAccount{
    //data members
    String name;
    integer accno,bal;
    static integer count=0;//static data member
    //create
    //default constructor
   public BankAccount()
    {
        accno=0;
        bal=0;
        name='no name';
        count++;
        
    }//end of default constructor
    //parameterized constructor
    public BankAccount(String name1,integer accno1,integer bal1)
    {
        name=name1;
    	accno=accno1;
    	bal=bal1;
        count++;
	}// end of parameterized constructor end of create
    //input
    public void setValues(String nameacc,integer accnbr,integer balance)
    {
        name=nameacc;
        accno=accnbr;
        bal=balance;
    }//end of setValues() end of input
    //process
    public integer creditBal(integer cbal)
    {
        bal=bal+cbal;
        return bal;
    }//end of creditBal() 
    public integer debitBal(integer dbal)
    {
        bal=bal-dbal;
        return bal;
    }//end of debitBal() end of process
    //output
    public void showBalance()
    {
        System.debug('Your Balance ='+bal);
    }//end of showBalance()
    public static void getAccounts()
    {
        System.debug('No Of Accounts ='+count);
    }//end of getAccounts()
    public void getValues() 
    {
        System.debug('Your Name is'  +name);
        System.debug('Your Account Number is' +accno);
        System.debug('Your Balance '+bal);
	}//end of getValues() end of output

}//end of class