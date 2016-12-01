public with sharing class ContactListViewController4 {
    Public Integer noOfRecords{get;set;}
    Public Integer size{get;set;}
    public List<WrapperClass> listcons { get{
        List<WrapperClass> listcons1 = new List<WrapperClass>();
        if(((List<Contact>)setcon.getRecords()).size()>0){
            for(Contact con : (List<Contact>)setcon.getRecords()){
                listcons1.add(new WrapperClass(con));
            }
        }
        return listcons1;
    }  set; }
    public ContactListViewController4(){
        
    }
    public ApexPages.StandardSetController setcon{
    get{
            if(setCon == null){
                    size = 10;
                    string queryString = 'SELECT Account.Name, FirstName, LastName, Phone FROM Contact';
                    setCon = new ApexPages.StandardSetController(Database.getQueryLocator(queryString));
                    setCon.setPageSize(size);
                    noOfRecords = setCon.getResultSize();
                }
                return setcon;
       }
    set;    
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