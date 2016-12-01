public with sharing class BankAccountPageController {
    public BankAccountPageController ()
    {
        render1=render2=render3=render4=render5=render6=render7=true;
    }

    public Boolean render7 { get; set; }

    public Boolean render6 { get; set; }

    public Boolean render5 { get; set; }

    public Boolean render4 { get; set; }

    public Boolean render3 { get; set; }

    public Boolean render2 { get; set; }

    public Boolean render1 { get; set; }

    public PageReference render1Action() {
        render1=true;
        return null;
    }


    public String pannumber { get; set; }

    public Decimal openbalance { get; set; }

    public Integer nmepincode { get; set; }

    public String nmedistrict { get; set; }

    public String nmemandal { get; set; }

    public String nmevillege { get; set; }

    public String nmehouseno { get; set; }

    public PageReference ptonmneAddress() {
        if(address2==true)
        {
        nmehouseno=phouseno;
        nmevillege=pvillege;
        nmemandal=pmandal;
        nmedistrict=pdistrict;
        nmepincode=ppincode;
        }else
        {
            nmehouseno=null;
        nmevillege=null;
        nmemandal=null;
        nmedistrict=null;
        nmepincode=null;
        }
        return null;
    }


    public Boolean address2 { get; set; }

    public String nomineemobileno { get; set; }

    public String nomineename { get; set; }

    public Integer pmtpincode { get; set; }

    public String pmtdistrict { get; set; }

    public String pmtmandal { get; set; }

    public String pmtvillege { get; set; }

    public String pmthouseno { get; set; }

    public PageReference ptopmtAddress() {
        if(address1==true)
        {
        pmthouseno=phouseno;
        pmtvillege=pvillege;
        pmtmandal=pmandal;
        pmtdistrict=pdistrict;
        pmtpincode=ppincode;
        }else
        {
            pmthouseno=null;
        pmtvillege=null;
        pmtmandal=null;
        pmtdistrict=null;
        pmtpincode=null;
        }
        return null;
    }


    public Boolean address1 { get; set; }

    public Integer ppincode { get; set; }

    public String pdistrict { get; set; }

    public String pmandal { get; set; }

    public String pvillege { get; set; }

    public String phouseno { get; set; }

    public String emailid { get; set; }

    public String mobileno { get; set; }

    public Date dateofbirth { get; set; }

    public String gender { get; set; }

    public String lastname { get; set; }

    public String firstname { get; set; }

    public PageReference clearAccount() {
        return null;
    }


    public PageReference saveAccount() {
        naveenb__BankAccount__c account = new naveenb__BankAccount__c();
        account.naveenb__First_Name__c=firstname;
        account.naveenb__Last_Name__c=lastname;
        account.naveenb__Gender__c=gender;
        account.naveenb__Date_Of_Birth__c=dateofbirth;
        account.naveenb__Mobile_No__c=mobileno;
        account.naveenb__Email__c=emailid;
        account.naveenb__House_No__c=phouseno;
        account.naveenb__Villege__c=pvillege;
        account.naveenb__Mandal__c=pmandal;
        account.naveenb__District__c=pdistrict;
        account.naveenb__Pincode__c=ppincode;
        account.naveenb__House_No1__c=pmthouseno;
        account.naveenb__Villege1__c=pmtvillege;
        account.naveenb__Mandal1__c=pmtmandal;
        account.naveenb__District1__c=pmtdistrict;
        account.naveenb__Pincode1__c=pmtpincode;
        account.naveenb__Nominee_Full_Name__c=nomineename;
        account.naveenb__Phone_No__c=nomineemobileno;
        account.naveenb__House_No2__c=nmehouseno;
        account.naveenb__Villege2__c=nmevillege;
        account.naveenb__Mandal2__c=nmemandal;
        account.naveenb__District2__c=nmedistrict;
        account.naveenb__Pincode2__c=nmepincode;
        account.naveenb__Balance__c=openbalance;
        account.naveenb__Pan_Number__c=pannumber;
        try
        {
        insert account;
        }catch(Exception e)
        {
            //ApexPages.addMessage(new ApexPages.message(ApexPages.severity.Error,''));
        }
        return null;
    }

}