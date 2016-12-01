public with sharing class DeleteStudentController {
//--------------data members-----------
    public Boolean ischeck { get; set; }
    //--------------------------Creting Student Handler------
    naveenb__StudentDetail__c deletestudent = new naveenb__StudentDetail__c();
    //-------default constructor to retrive data from sobject--------------
    public DeleteStudentController ()
    {
        Id id=ApexPages.CurrentPage().getParameters().get('id');
        if(id!=null)
        {
            deletestudent=[Select name,naveenb__Student_Name__c,naveenb__Father_Name__c,naveenb__Date_Of_Birth__c,naveenb__Drop_Student__c from naveenb__StudentDetail__c where Id=:id];
        }
    }
    //-----------------Deleting/Update record----------
    public PageReference deleteStudent() {
        if(ischeck==true)
        {
            deletestudent.naveenb__Drop_Student__c=true;
            try
            {
                update deletestudent;
            }Catch(Exception e)
            {
                
            }
        }
        return null;
    }
}//----------End of controller----------