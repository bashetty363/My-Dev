public class BookController {

    public String getBookname2() {
        return name;
    }

    
    

        public String name { get; set; }

        public String author { get; set; }
    
        public Integer edition { get; set; }
        
        public Integer price { get; set; }

    public PageReference save() {
        if(name.length()==0 || author.length()==0 || price==0 || edition==0)
        {
           ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.warning,'All Fields Are Mandatory.'));
           edition=null;
           name=null;
           author=null;
           price=null; 
           return null;
        }
        else
        {
        Book__c book1=new Book__c();
        book1.Name=name;
        book1.Author__c=author;
        book1.naveenb__Edition__c=edition;
        book1.naveenb__Price__c=price;
        try
        {
        insert book1;
        }catch(Exception e)
        {
            ApexPages.addMessage(new Apexpages.Message(ApexPages.Severity.warning,'Insertion Failed'));
        }
        PageReference pg= new PageReference('https://naveenb.na15.visual.force.com/apex/bookpage1');
        return pg;
        }
        
    }
    public PageReference savenew() {
        Book__c book1=new Book__c();
        book1.Name=name;
        book1.Author__c=author;
        book1.naveenb__Edition__c=edition;
        book1.naveenb__Price__c=price;
        insert book1;
        PageReference pg2= new PageReference('https://naveenb.na15.visual.force.com/apex/bookpage');
        return pg2;
    }
     public PageReference cancel() {
        PageReference pg1= new PageReference('https://na15.salesforce.com/home/home.jsp');
        return pg1;
        
    }

}