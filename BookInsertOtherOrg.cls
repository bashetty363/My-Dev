global class BookInsertOtherOrg
{
    webservice static void insertBookDetails(String name,String author,Integer edition,Integer price)
    {
        String bookname=name;
        String bookauthor=author;
        Integer bookedition=edition;
        Integer bookprice=price;
        naveenb__Book__c bookdetails=new naveenb__Book__c();
        bookdetails.Name=bookname;
        bookdetails.naveenb__Author__c=bookauthor;
        bookdetails.naveenb__Edition__c=bookedition;
        bookdetails.naveenb__Price__c=bookprice;
        try
        {
        insert bookdetails;
        }catch(Exception e)
        {
        }
    }
}