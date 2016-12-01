public class ActionRegionPageExt {
    public Opportunity newopt{set;get;}
    public time ipval{set;get;}
    public ActionRegionPageExt(ApexPages.StandardController controller) {
        newopt=(Opportunity)controller.getRecord();
    }
    integer i=0;
    public void populatedate()
    {
        i+=1;
        newopt.closedate=Date.today().addDays(i);
    }
}