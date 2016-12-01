public with sharing class AttendanceController {

    

    public PageReference downloadAction() {
        renderas1='Pdf';
        return null;
    }


    public String renderas1 { get; set; }

    public String teachername { get; set; }

    public List<naveenb__Attendance_Sheet__c> getAttendanceDetails() {
        return students1;
    }


   

    

    public Boolean render2 { get; set; }

    public Boolean render0 { get; set; }

    public list<selectoption> getClass1() {
    options.clear();
    List<naveenb__Class__c> classes1=[Select Name from naveenb__Class__c order by id asc];
   options.add(new selectoption('', 'Select'));
   for(naveenb__Class__c class2:classes1)
   {
       options.add(new selectoption(class2.name, class2.name));
   }
        return options;
        
    }


    


    public Boolean render1 { get; set; }

    public PageReference studentDetails() {
        absents=0;
        presents=0;
        render0=false;
        render1=true;
        render2=false;
    students1=[Select name,naveenb__Student_Number__r.Name,naveenb__Status__c from naveenb__Attendance_Sheet__c where naveenb__Class__c = :classes order by naveenb__Student_Number__r.Name asc];
        for(naveenb__Attendance_Sheet__c st:students1)
            {
                st.naveenb__Status__c=false;
            }
            students=students1.size();
        return null;
    }

    list<selectoption> options= new list<selectoption>();
    


    public String classes { get; set; }

    public PageReference showDetails() {
    System.debug(students1);
        absents=0;
        presents=0;
    for(naveenb__Attendance_Sheet__c student1:students1)
    {
        IF(student1.naveenb__Status__c==true)
        {
        absents=absents+0;
        presents=presents+1;

        }else
        {
            absents=absents+1;
            presents=presents+0;
        }
        
    }
        return null;
    }


    public Integer students { get; set; }

    public Integer absents { get; set; }

    public Integer presents { get; set; }
        
    public PageReference saveAttendance() {
        try
        {
        update students1;
        }Catch(Exception e)
        {
        }
        naveenb__Day_Report__c todayreport=[Select name,naveenb__Class_Name__r.Name,naveenb__Date__c,naveenb__Total_Absents__c,naveenb__Total_Presents__c,naveenb__Total_Students__c from naveenb__Day_Report__c where naveenb__Class_Name__r.Name=:classes];
        todayreport.Name=UserInfo.getName();
        todayreport.naveenb__Class_Name__r.Name=classes;
        todayreport.naveenb__Date__c=date.today();
        todayreport.naveenb__Total_Absents__c=absents;
        todayreport.naveenb__Total_Presents__c=presents;     
        todayreport.naveenb__Total_Students__c=students;
        try
        {
        update todayreport;
        }Catch(Exception e)
        {
            
        }
        render0=render1=false;
        render2=true;
        return null;
    }


    public List<naveenb__Attendance_Sheet__c> students1 { get; set; }
   
    
    public String status { get; set; }
    public String todaytime { get; set; }
    
    //------------------Default Constructor--------------------
    
    public AttendanceController()
    {
        todaydate=date.today().format();
        todaytime=datetime.now().format('HH:mm');
        students=absents=0;
        presents=0;
        teachername=UserInfo.getName();
        render0=true;
        render1=false;
        render2=false;

    }

    public String todaydate { get; set; }
     public class WrapperClass
    {
        public naveenb__Attendance_Sheet__c student{get;set;}
        public WrapperClass(naveenb__Attendance_Sheet__c students)
        {
            student=students;
        }
    }
}