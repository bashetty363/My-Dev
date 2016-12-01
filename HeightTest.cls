//HeightTest test class
@isTest
public class HeightTest{
    //main method
    public static testMethod void main()
    {
        Height table=new Height();
        table.setValues(12,8);
        table.difference(13,2);
        table.getValues();
        Height wall=new Height(16,8);
        wall.sum(4,6);
        wall.getValues();
    }//end of main method 

}//end of test class