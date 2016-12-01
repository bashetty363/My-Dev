//Book class
public class Book{
    //data members
    String name,author;
    Integer cost,edition,totcost,disc=0;
    //create
    //default constructor
    public Book()
    {
        name=author='no name';
        cost=edition=totcost=0;
    }//end of default constructor
    //parameterized constructor
    public Book(String name1,String author1,Integer edition1,Integer cost1)
    {
        name=name1;
        author=author1;
        edition=edition1;
        cost=cost1;
        totcost=cost;
    }//end of parameterized constructor //end of create
    //input
    public void setValues(String name2,String author2,Integer edition2,Integer cost2)
    {
        name=name2;
        author=author2;
        edition=edition2;
        cost=cost2;
        totcost=cost;
    }//end of setValues() //end of input
    //process
    public void discount(Integer disper)
    {
        disc=((cost*disper)/100);
        totcost=(cost-disc);
    }//end of discount() //end of process
    //output
    public void getValues()
    {
        System.debug('Book Name : '+name);
        System.debug('Book Author : '+author);
        System.debug('Book Edition : '+edition);
        System.debug('Book Actual Cost='+cost);
        System.debug('Discount Amount='+disc);
        System.debug('After Discount Book Cost='+totcost);
    }//end of getValues() //end of output

}//end of class