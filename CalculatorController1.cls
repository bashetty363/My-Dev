public class CalculatorController1 {
    public CalculatorController1()
    {
    }

    public PageReference add() {
    if(result.length()==0)
        {
            result=null;
        }
        else
        {
            result=result+'+';
        }
        return null;
    }


    public PageReference answer() {
        String[] res=result.split('(?<=[*/+-])|(?=[+/*-])');
        Integer index=0;
        for(index=0; index<res.size();index++)
        {
            if(res[index].equals('/'))
            {
                res[index-1]=String.valueOf(double.valueOf(res[index-1])/double.valueOf(res[index+1]));
                res.remove(index);
                res.remove(index);
                index=0;
            }
        }
        for(index=0; index<res.size();index++)
        {
         if(res[index].equals('*'))
         {
             res[index-1]=String.valueOf(double.valueOf(res[index-1])*double.valueOf(res[index+1]));
             res.remove(index);
             res.remove(index);
             index=0;
         }
        }
        for(index=0; index<res.size(); index++)
        {
            if(res[index].equals('-'))
            {
                res[index-1]=String.valueOf(double.valueOf(res[index-1])-double.valueOf(res[index+1]));
                res.remove(index);
                res.remove(index);
                index=0;
            }
        }
        for(index=0; index<res.size(); index++)
        {
            if(res[index].equals('+'))
            {
                res[index-1]=String.valueOf(double.valueOf(res[index-1])+double.valueOf(res[index+1]));
                res.remove(index);
                res.remove(index);
                index=0;
            }
        }
        result=res[index-1];
        return null;
    }


    public PageReference value11() {
        if(result.length()==0)
        {
            result=null;
        }
        else
        {
            result=result+'.';
        }
        return null;
    }


    public PageReference value10() {
        if(result.length()==0)
        {
            result=null;
        }
        else if(result.equals('0'))
        {
            result='0';
        }else
        {
            result=result+'0';
        }
        return null;
    }


    public PageReference subtract() {
        if(result.length()==0)
        {
            result=null;
        }
        else
        {
            result=result+'-';
        }
        return null;
    }


    public PageReference value9() {
        if(result.length()==0)
        {
            result=null;
        }
        else if(result.equals('0'))
        {
            result='9';
        }else
        {
            result=result+'9';
        }
        return null;
    }


    public PageReference value8() {
        if(result.length()==0)
        {
            result=null;
        }
        else if(result.equals('0'))
        {
            result='8';
        }else
        {
            result=result+'8';
        }
        return null;
    }


    public PageReference value7() {
    if(result.length()==0)
        {
            result=null;
        }
        else if(result.equals('0'))
        {
            result='7';
        }else
        {
            result=result+'7';
        }
        return null;
    }


    public PageReference multiply() {
    if(result.length()==0)
        {
            result=null;
        }
        else
        {
            result=result+'*';
        }
        return null;
    }


    public PageReference value6() {
    if(result.length()==0)
        {
            result=null;
        }
        else if(result.equals('0'))
        {
            result='6';
        }else
        {
            result=result+'6';
        }
        return null;
    }


    public PageReference value5() {
    if(result.length()==0)
        {
            result=null;
        }
        else if(result.equals('0'))
        {
            result='5';
        }else
        {
            result=result+'5';
        }
        return null;
    }


    public PageReference value4() {
        if(result.length()==0)
        {
            result=null;
        }
        else if(result.equals('0'))
        {
            result='4';
        }else
        {
            result=result+'4';
        }
        return null;
    }


    public PageReference divide() {
        if(result.length()==0)
        {
            result=null;
        }
        else
        {
            result=result+'/';
        }
        return null;
    }


    public PageReference value3() {
    if(result.length()==0)
        {
            result=null;
        }
        else if(result.equals('0'))
        {
            result='3';
        }else
        {
            result=result+'3';
        }
        return null;
    }


    public PageReference value2() {
    if(result.length()==0)
        {
            result=null;
        }
        else if(result.equals('0'))
        {
            result='2';
        }else
        {
            result=result+'2';
        }
        return null;
    }


    public PageReference value1() {
      if(result.length()==0)
        {
            result=null;
        }
        else if(result.equals('0'))
        {
            result='1';
        }else
        {
            result=result+'1';
        }
        return null;
    }


    public PageReference clear() {
        if(result.length()==0)
        {
            result=null;
        }else 
        {
         result=result.subString(0,result.length()-1);
         if(result.length()==0)
         {
             result='0';
         }
        }
        return null;
    }


    public PageReference offCalculator() {
        result=null;
        return null;
    }


    public PageReference onCalculator() {
        result='0';
        return null;
    }


    public String result { get; set; }
}