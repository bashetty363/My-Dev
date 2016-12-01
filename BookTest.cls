// BookTest test class
@isTest
public class BookTest{
    //main method
    public static testMethod void main()
    {
        Book book1=new Book();
        book1.setValues('Apex','sales force',2014,2000);
        book1.getValues();
        book1.discount(10);
        book1.getValues();
        Book book2=new Book('visual force','sales force',2014,1200);
        book2.getValues();
        book2.discount(12);
        book2.getValues();
    }//end of main method

}//end of test class