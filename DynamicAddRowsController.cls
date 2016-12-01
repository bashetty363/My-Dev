public with sharing class DynamicAddRowsController {

    public PageReference saveBookList() {
        try
        {
           for(Book__c bookclear:bookList)
            {
            if(bookclear.Name.length()!=0 & bookclear.Author__c.length()!=0)
            if(bookclear.Edition__c!=null & bookclear.Price__c!=null)
            {
             insert bookclear;
             }
            bookclear.Name='';
            bookclear.Author__c='';
            bookclear.Edition__c=null;
            bookclear.Price__c=null;
            }
        }catch(Exception e)
        {
        }
         bookList = new List<Book__c> ();
        bookList.add(new Book__c());
        return null;
    }

    public DynamicAddRowsController()
    {
         bookList = new List<Book__c> ();
         bookList.add(new Book__c());
         /*bookList.add(new Book__c());
         bookList.add(new Book__c());
         bookList.add(new Book__c());
         bookList.add(new Book__c());*/
    }
    
    public PageReference deleteRow() { 
        if(booklist.size()!=1)
        bookList.remove(booklist.size()-1);
        return null;
    }


    public PageReference addRow() {
        bookList.add(new Book__c());
        return null;
    }


    public List<Book__c> bookList { get; set; }
    
}