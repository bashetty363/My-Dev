public class Cal12 {
 public PageReference si() {
        return null;
    }


    public PageReference rev() {
        return null;
    }


    public PageReference reverse() {
        return null;
    }

integer num1;
integer num2;
integer num3;
integer num4;
integer num5;
integer num6;
integer num7;
integer num8;
integer num9;
integer num0;
integer result1;
      
       public integer result { get; set; }
           public string s;


    public void add() {
        result1=result;
         result=0;
         s='add';
    }


    public void div() {
        result1=result;
        result=0;
        s='div';
    }


    public void mul() {
         result1=result;
           result=0;
           s='mul';
    }


    public void sub() {
        result1=result;
         result=0;
         s='sub';
    }


    public void clear() {
        result1=result;
        result=0;
        s='clear';
        
    }


    public void equql() {
        if(s=='add'){
        result=result1+result;
        }
        else if(s=='sub'){
        result=result1-result;
        }
        else if(s=='mul'){
          result=result1*result;
          }
          else if(s=='div'){
            result=result1/result;
            }
        }
    


    public void zero() {
       if(result==null){
       result=0;
       }
       else{
       result=result+0;
    }
}

    public  void nine() {
        if(result==null){
        result=0;
        }
        else{
        result=result*10+9;
        }
    }


    public void eight() {
        
       if(result==null){
    result=0;
    }
else{
    result=result*10+8;
     }
    }



    public void seven() {
        if(result==null){
        result=0;
        }
        else{
        result=result*10+7;
    }}


    public  void six() {
       if(result==null){
       result=0;
       }
       else{
       result=result*10+6;
       }
    }


    public void five() {
       if(result==null){
       result=0;
       }
       else{
       result=result+10*5;
       
       }
     }
     public void four() {
        if(result==null){
        result=0;
        }
        else{
        result=result*10+4;
        }
    }


    public  void three() {
        if(result==null){
        result=0;
        }
        else{
        result=result*10+3;
        }
    }


    public void two() {
        if(result==null){
        result=0;
        }
        else{
        result=result*10+2;
        }
    }


    public void one() {
        if(result==null){
    result=0;
    }
else{
    result=result*10+1;
     }
    }
}