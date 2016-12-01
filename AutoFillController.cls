public with sharing class AutoFillController {

    public Decimal bookprice { get; set; }

    public Decimal bookedition { get; set; }

    public String bookauthor { get; set; }

    public PageReference autoFillDetails() {
        if(selectbook!='none')
        {
        naveenb__Book__c bookdetails = [Select naveenb__Author__c,naveenb__Edition__c,naveenb__Price__c from naveenb__Book__c where Id=:selectbook limit 1];
        bookauthor=bookdetails.naveenb__Author__c;
        bookedition=bookdetails.naveenb__Edition__c;
        bookprice=bookdetails.naveenb__Price__c;
        }
        else
        {
            bookauthor=null;
            bookprice=null;
            bookedition=null;
        }
        return null;
    }


    public String selectbook { get; set; }
    List<SelectOption> options = new List<SelectOption>();
    public List<SelectOption> getBooknames() {
        options.clear();
            options.add(new SelectOption('none','--Select--'));
        List<naveenb__Book__c> books =[Select name from naveenb__Book__c order by name];
        for(naveenb__Book__c book:books)
        {
        options.add(new SelectOption(book.Id,book.Name));
        }
        return options;
    }

}