//-----------BankAccountParent Class------

 public virtual class BankAccountParent
  {
//------Data Members----------  
       Protected String name;
       Protected Integer acc_no,bal,amt;
//-----------Create------------       
//----------Default Constructor----------
    public BankAccountParent()  
    {
        name='no name';
        acc_no=bal=amt=0;
    }//--------End of Default constructor----------
//-----------Parameterized Constructor-------------
    public BankAccountParent(String name1,Integer acc_no1,Integer bal1)         
    {
        name=name1;
        acc_no=acc_no1;
        bal=bal1;
    }//-----End of Parameterized Constructor------------
//---------- Input------------
//-----------setValues Method-----
    public void setValues(String name1,Integer acc_no1,Integer bal1)
    {
        name=name1;
        acc_no=acc_no1;
        bal=bal1;
    }//--------------End of setValues Method-------------
//----------Process------------
//----------depositAmount Method--------
    public void depositAmount(Integer amt1)
    {
        amt=amt1;
        bal=bal+amt;
    }//----------depositAmount Method-----------
//----------withdrawAmount----------
    public void withdrawAmount(Integer amt1)          
    {
        amt=amt1;
        bal=bal-amt;
    }//--------End of withdrawAmount Method---------
//-----------Output---------
//-----------showBalance Method---------
    public Integer showBalance()
    {
        System.debug('Balance Amount is ' +bal);
        return bal;
    }//------End of showBalance Method---------
//-----------accountDetails Method---------    
    public virtual void accountDetails()
    {
        System.debug('Account No ' +acc_no);
        System.debug('Holder Name ' +name);
        System.debug('Balance ' +bal);
    }//------------End of accountDetails Method--------
  }//-----------End of BankAccountParent Class----------