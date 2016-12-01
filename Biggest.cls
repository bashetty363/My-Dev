//finding biggest of two numbers
public class Biggest{
//data members
integer num1,num2,res;
String s1;
//member methods
public void input(integer n1,integer n2)
{
num1=n1;
num2=n2;
}
public void process()
{
if(num1>num2)
{
res=num1;
}
else if(num2>num1)
{
res=num2;
}
else
{
s1='Both Are Equal';
}
}
public void output()
{
System.debug(+res+ 'is Bigger');
System.debug(s1);
}
}