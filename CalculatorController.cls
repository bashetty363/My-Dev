public class CalculatorController {
    Integer result;
    String operator;
     public CalculatorController()
    {
        value=0;
        check=true;
        //System.debug('value='+value +'check='+check);
    }
    public PageReference uncheck() {
        check=false;
        //System.debug('value='+value +'check='+check);
        return null;
    }
     public PageReference check() {
        value=null;
        check=true;
        return null;
    }
    public Boolean check { get; set; }
   /*public void getcheck()
   {
   System.debug('value='+value +'check='+check);
   }*/
    public PageReference add() {
        result=value;
        value=null;
        operator='+';System.debug('value='+value +'check='+check);
        return null;
    }


    public PageReference answer() {
        if(operator=='+')
        {
            value=result+value;
        }
        else if(operator=='-')
        {
            value=result-value;
        }
        else if(operator=='*')
        {
            value=result*value;
        }
        else if(operator=='/')
        {
            value=result/value;
        }
        else
        {
            value=null;
        }
        return null;
    }


    public PageReference value11() {
     
        return null;
    }


    public PageReference value10() {
     value=value*10+0;
        return null;
    }


    public PageReference subtract() {
        result=value;
        value=null;
        operator='-';
        return null;
    }


    public PageReference value9() {
     value=value*10+9;
        return null;
    }


    public PageReference value8() {
     value=value*10+8;
        return null;
    }


    public PageReference value7() {
     value=value*10+7;
        return null;
    }


    public PageReference multiply() {
        result=value;
        value=null;
        operator='*';
        return null;
    }


    public PageReference value6() {
     value=value*10+6;
        return null;
    }


    public PageReference value5() {
     value=value*10+5;
        return null;
    }


    public PageReference value4() {
     value=value*10+4;
        return null;
    }


    public PageReference divide() {
        result=value;
        value=null;
        operator='/';
        return null;
    }


    public PageReference value3() {
        value=value*10+3;
        return null;
    }


    public PageReference value2() {
        value=value*10+2;
        return null;
    }


    public PageReference value1() {
        value=value*10+1;
        return null;
    }


    public PageReference clear() {
        value=value/10;
        return null;
    }


    public Integer value { get; set; }
}