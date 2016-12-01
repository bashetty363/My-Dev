//EmployeeTest testclass
@isTest
public class EmployeeTest{
    public static testMethod void main()//main method 
    {
        Employee.getTotEmps();//0  
        Employee emp1=new Employee();
        emp1.setValues(101,'Naveen','jr developer',20000);
        emp1.getValues();
        emp1.bonus(2000);
        emp1.getValues();
        emp1.promot('sr developer');
        emp1.getValues();
        emp1.bonuspromot('team leader',5000);
        emp1.getValues();
        Employee.getTotEmps();
        Employee emp2=new Employee(102,'praveen','sr developer',30000);
        emp2.getValues();
        emp2.bonus(2000);
        emp2.getValues();
        emp2.promot('team leader');
        emp2.getValues();
        emp2.bonuspromot('manager',5000);
        emp2.getValues();
        Employee.getTotEmps();
    }//end of main method 

}//end of test class