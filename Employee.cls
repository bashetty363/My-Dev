//Employee class
public class Employee{
    //data members
    Integer empid,sal;
    String empname,job;
    static integer totemp=0;// static data member
    //create
    //default constructor
    public Employee()
    {
		empid=sal=0;
        empname=job='no name';
        totemp++;
    }//end of default constructor
    //parameterized constructor
    public Employee(integer empid1,String empname1,String job1,integer sal1)
    {
        empid=empid1;
        empname=empname1;
        job=job1;
        sal=sal1;
        totemp++;
    }//end of parameterized constructor//end of create
    //input
    public void setValues(integer empid2,String empname2,String job2,integer sal2)
    {
        empid=empid2;
        empname=empname2;
        job=job2;
        sal=sal2;
    }//end of setValues()//end of input
    //process
    public void bonus(integer amount)
    {
        sal=sal+amount;
    }//end of bonus()
    public void promot(String job3)
    {
        job=job3;
    }//end of promot()
    public void bonuspromot(String job4,Integer amount1)
    {
        job=job4;
        sal=sal+amount1;
    }//end of bonuspromot()//end of process
    //output
    public static void getTotEmps()
    {
      System.debug('Number Of Employees='+totemp);
	}//end of totEmp()
    public void getValues()
    {
        System.debug('Employee Id :'+empid);
        System.debug('Employee Name :'+empname);
        System.debug('Employee Job :'+job);
        System.debug('Employee Salary='+sal);
    }//end of getValues()//end of output

}//end of class