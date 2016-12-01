//Hieght class
public class Height{
    //data members
    Integer feet,inch;
    //create
    //default constructor
    public Height()
    {
        feet=0;
        inch=0;
    }//end of default constructor
    //parameterized constructor
    public Height(Integer feet1,Integer inch1)
    {
        feet=feet1;
        inch=inch1;
    }// end of parameterized constructor //end of create
    //input
    public void setValues(Integer feet2,Integer inch2)
    {
        feet=feet2;
        inch=inch2;
    }//end of setValues() //end of input
    //process
    public void sum(Integer feet1,Integer inch1)
    {
        integer height1=((feet*12)+inch);
        integer height2=((feet1*12)+inch1);
        feet=(height1+height2)/12;
        inch=math.mod((height1+height2),12);
        
    }// end of sum()
    public void difference(Integer feet2,Integer inch2)
    {
        Integer height3=((feet*12)+inch);
        Integer height4=((feet2*12)+inch2);
        if(height3>height4)
       	{
            feet=(height3-height4)/12;
            inch=Math.mod((height3-height4),12);
        }
        else
        {
            feet=(height4-height3)/12;
            inch=math.mod((height4-height3),12);
        }
    }//end of difference() end of process
    //output
    public void getValues()
    {
        System.debug('Height='+feet+'fts'+inch+'inchs');
    }// end of getValues() end of output

}//end of class