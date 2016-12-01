public class datacontroller 
{
   
    //----------------data members-------------

    integer disp=0;
    integer disp1=10;
    integer index;
    
    //----------------List-collection creation------------
    
    List<Candidate__c> candidatedata = new List<Candidate__c>();
    List<Candidate__c> candidate = new List<Candidate__c>();
    
    //------------------default constructor----------
    
    public datacontroller()
        {
            //-----------SOQL Query to retrive all records from Candidate__c sobject------------
            candidatedata= [Select Name,naveenb__First_Name__c from Candidate__c ];
        }//---------end of default constructor------------
        
        //------------set and get method declaration for number1 data member----------
        public Integer number1{set; get;}
    
        //-------------------Candidatedatasize get method------------
        public Integer getCandidatedatasize() 
         {
            Integer candidatedatasize=candidatedata.size();
            return candidatedatasize;
         }//-----end of Candidatedatasize get method--------
         
          //--------------------getDisp1 method---------------
    public Integer getDisp1() 
        {
            return disp1;
        }//--------------end of getDisp1()----------

    //-------------getDisp()----------
    public Integer getDisp() 
        {
            return disp+1;
        }//------------end of getDisp()-------------

         
         //----------------candidatedata get method--------
         public List<Candidate__c> getCandidatedata() 
         {
             candidate.clear();
             for(index=disp; index<disp1; index++)
                {
                    if(disp1<candidatedata.size() || disp1>0 || disp>=0)
                        {
                            candidate.add(candidatedata[index]);
                        }else
                            {
                                return candidate;
                            }
                }
        return candidate;
        }//---------end of candidatedata get method--------
        
        //------------candidate3 method-------------
       public PageReference candidate3() 
            {
              if(number1>candidatedata.size())
                        {
                            disp=0;
                            disp1=candidatedata.size();
                        }else
                            {
                                disp=0;
                                disp1=number1;
                            }
            return null;
            }//------------candidate3 method-----------
    
        //--------------disable1 get method-------------
     public Boolean getDisable1() 
            {
              if(disp1==candidatedata.size())
                {
                    return true;
                }else
                    {
                       return false;
                    }
            }//--------end of getDisable()---------

        //----------------disable2 get method------------
      public Boolean getDisable2() 
            {
              if(disp==0)
                  {
                    return true;
                  }else
                    {
                        return false;
                    }
            }//-------------getDisable2()--------
    
    //-------------nextData method---------
     public PageReference nextData() 
         {
            disp=disp+number1;//50 60
            disp1=disp1+number1;//60 70
            if(disp1>candidatedata.size())
            {
                disp=disp;
                disp1=candidatedata.size();
            }
          return null;
        }//----------end of nextData method--------
   
       //-----------previousData method--------
   public PageReference previousData() 
           {
                if(disp1==candidatedata.size())
                {
                    disp1=disp;
                    disp=disp-number1;
                }else
                {
                    disp=disp-number1;
                    disp1=disp1-number1;
                }
           return null; 
            }//--------- end of previousData()------
}//-------------end of datacontroller class----------