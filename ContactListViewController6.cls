public with sharing class ContactListViewController6 {
    public void backToListPage(){
        isrenderform2=false;
        isrenderform1 = true;
    }
    public String startdate{set;get;}
    public String enddate{set;get;}
    public String ftbase{set;get;}
    public string exturl{set;get;}
    public String exthost{set;get;}
    public PageReference filterContacts() {
        selectedliteral='none';
        System.debug('=========StartDate : '+startdate.Split('/')  +'======>>>>Enddate:'+enddate.Split('/')  +'=======ftbase : '+ftbase);
        DateTime startdatetime = DateTime.newInstance(Integer.valueOf(startdate.Split('/')[2]),Integer.valueOf(startdate.Split('/')[0]),Integer.valueOf(startdate.Split('/')[1]));
        DateTime enddatetime = DateTime.newInstance(Integer.valueOf(enddate.Split('/')[2]),Integer.valueOf(enddate.Split('/')[0]),Integer.valueOf(enddate.Split('/')[1]));
        System.debug('=====startdatetime :'+startdatetime  +'===========enddatetime :'+enddatetime);
        listwrap =new List<WrapperClass>();
        ApexPages.StandardSetController setcon;
        if(ftbase == 'CreatedDate'){
             setcon = new ApexPages.StandardSetController([SELECT Account.Name, FirstName, LastName, Phone FROM Contact where CreatedDate>=:startdatetime and CreatedDate<=:enddatetime limit 1000]);
        }else{
             setcon = new ApexPages.StandardSetController([SELECT Account.Name, FirstName, LastName, Phone FROM Contact where LastModifiedDate>=:startdatetime and LastModifiedDate<=:enddatetime limit 1000]);
        }
        setcon.setPageSize(1000);
        for(Contact con: (List<Contact>)setcon.getRecords()){
            listwrap.add(new WrapperClass(con));
        }
        return null;
    }

    public String selectedliteral{set;get;}
    public Case newcase{set;get;}
    public PageReference showFilterData() {
        listwrap =new List<WrapperClass>();
        ApexPages.StandardSetController setcon;
        if(selectedliteral == 'TODAY'){
             setcon = new ApexPages.StandardSetController([SELECT Account.Name, FirstName, LastName, Phone FROM Contact where CreatedDate=TODAY limit 1000]);
        }else if(selectedliteral == 'THIS_WEEK'){
             setcon = new ApexPages.StandardSetController([SELECT Account.Name, FirstName, LastName, Phone FROM Contact where CreatedDate= THIS_WEEK limit 1000]);
        }else if(selectedliteral == 'LAST_WEEK'){
             setcon = new ApexPages.StandardSetController([SELECT Account.Name, FirstName, LastName, Phone FROM Contact where CreatedDate=LAST_WEEK limit 1000]);
        }else if(selectedliteral == 'THIS_MONTH'){
             setcon = new ApexPages.StandardSetController([SELECT Account.Name, FirstName, LastName, Phone FROM Contact where CreatedDate=THIS_MONTH limit 1000]);
        }else if(selectedliteral == 'LAST_MONTH'){
             setcon = new ApexPages.StandardSetController([SELECT Account.Name, FirstName, LastName, Phone FROM Contact where CreatedDate=LAST_MONTH limit 1000]);
        }else if(selectedliteral == 'THIS_YEAR'){
             setcon = new ApexPages.StandardSetController([SELECT Account.Name, FirstName, LastName, Phone FROM Contact where CreatedDate=THIS_YEAR limit 1000]);
        }else if(selectedliteral == 'LAST_YEAR'){
             setcon = new ApexPages.StandardSetController([SELECT Account.Name, FirstName, LastName, Phone FROM Contact where CreatedDate=LAST_YEAR limit 1000]);
        }else{
             setcon = new ApexPages.StandardSetController([SELECT Account.Name, FirstName, LastName, Phone FROM Contact limit 1000]);
        }
        setcon.setPageSize(1000);
        for(Contact con: (List<Contact>)setcon.getRecords()){
            listwrap.add(new WrapperClass(con));
        }
        return null;
    }


   
    public Boolean isrenderform2 { get; set; }

    public Boolean isrenderform1 { get; set; }
    

Public List<Selectoption> calltypeopt{get; set;}
   //public Call_List__c newcalllist{get; set;}
   public String callistflag{get; set;}
   public string callListId {get; set;}
  
   //public TR1__Call_List_Member__c callmem {get; set;}

    public pagereference addCons()
    {
    /*List<Contact> selectedcons = new List<Contact>();
    for(WrapperClass each : listwrap){
        if(each.ischeckeach == true){
            selectedcons.add(each.con);
        }
    }
        System.debug('=================>>>>>'+listselectedconids);
        if(callistflag == 'new')
        {
            if(newCallList.name == null)
            {
                Apexpages.addmessage(new ApexPages.Message(ApexPages.Severity.FATAL,
                 'Enter Name of the Call List'));
                return null;
            }
            insert newcalllist;
            callListId = newcalllist.Id;
        }
        else 
        {
            callListId = callmem.TR1__Call_List__c; 
        }*/
       //List<TR1__Call_List_Member__c> callmember = new List<TR1__Call_List_Member__c>();
       
       /*if(apexpages.currentpage().getparameters().containskey('ConId'))
       {
          
           String conId = apexpages.currentpage().getparameters().get('ConId');
           
           callmember.add(new TR1__Call_List_Member__c(tr1__Contact__c = conId,
                TR1__Call_List__c = callListId,TR1__Call_List_Contact__c=conId+ '-'+callListId));
                            
       
       }
       if(listselectedconids.size()>0)
       {
          
           for(String con : listselectedconids)
           {
               // START @10/12/2015 : Code Modified By BVerma for I-415 : Only half Contacts from List View are transferred to Call List
              // callmember.add(new TR1__Call_List_Member__c(tr1__Contact__c = con,
               //TR1__Call_List__c = callListId,TR1__Call_List_Contact__c=con+ '-'+callListId));
               // START @10/12/2015 : Code Modified By BVerma for I-415 : Only half Contacts from List View are transferred to Call List
           }
                            
       
       }
       if(callmember.size()>0)
       {
            Schema.SObjectField f = TR1__Call_List_Member__c.Fields.TR1__Call_List_Contact__c;
            database.Upsert(callmember,f);
            return new Pagereference('/' + callListId); 
       }*/
     
       return null;
    }


public String selectedconids{set;get;}
public List<String> listselectedconids{set;get;} 
    public PageReference submitContacts() {
    isrenderform2=true;
    isrenderform1 = false;
    PageReference pr =new PageReference('/apex/CallListManager_v2?ids='+selectedconids);//Page.CallListManager_v2;
   // pr.getParameters().put('ids',selectedconids);
    if(!String.isEmpty(selectedconids)){
        for(String eachid : selectedconids.split(';')){
            listselectedconids.add(eachid);
        }
    }
        System.debug('===============>>>>>'+selectedconids);
         System.debug('=======   listselectedconids  ========>>>>>'+listselectedconids);
         //pr.setRedirect(false);
        return null;
    }

    public List<WrapperClass> listwrap{set;get;}
    
    public ContactListViewController6(){
  exturl = URL.getSalesforceBaseUrl().toExternalForm();
  exthost = URL.getSalesforceBaseUrl().getHost();
    isrenderform2=false;
    isrenderform1 = true;
    String parids = ApexPages.CurrentPage().getParameters().get('ids');
    System.debug('================>>>'+parids);
   listselectedconids = new List<String>();
    
    // newcalllist = new Call_List__c();
      
       calltypeopt = new List<Selectoption>();
      
      // callmem = new TR1__Call_List_Member__c();
       
        callistflag = 'old';
        calltypeopt.add(new selectOption('old','Select Existing Call List'));
        calltypeopt.add(new selectOption('new','Create New Call List'));
    
    
    
        listwrap =new List<WrapperClass>();
        ApexPages.StandardSetController setcon = new ApexPages.StandardSetController([SELECT Account.Name, FirstName, LastName, Phone FROM Contact limit 1000]);
        setcon.setPageSize(1000);
        for(Contact con: (List<Contact>)setcon.getRecords()){
            listwrap.add(new WrapperClass(con));
        }
    }
   
   
   
    public Class WrapperClass{
        public Boolean ischeckeach{set;get;}
        public Contact con{set;get;}
        public WrapperClass(Contact con1){
            con = con1;
            ischeckeach = false;
        }
    }
}