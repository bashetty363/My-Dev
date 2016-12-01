public with sharing class ContactListViewController {

    public PageReference submitContacts() {
        System.debug('===============>>>>>'+listwrap);
        return null;
    }

    public List<WrapperClass> listwrap{set;get;
    }
    public ContactListViewController(){
        listwrap =new List<WrapperClass>();
        string queryString = 'SELECT Account.Name, FirstName, LastName, Phone FROM Contact';
        ApexPages.StandardSetController setcon = new ApexPages.StandardSetController(Database.getQueryLocator(queryString));
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