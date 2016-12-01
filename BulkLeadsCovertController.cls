public with sharing class BulkLeadsCovertController {

    

    public PageReference convertLeads() {
        
        for(WrapperLead wrap : getTotalleads())
        {
        if(wrap.eachcheck==true)
        {
        wrap.leads.status='Closed - Converted';
        try
        {
        update wrap.leads;
        Database.LeadConvert lc = new Database.LeadConvert();
        lc.setLeadId(wrap.leads.id);
        LeadStatus convertStatus = [SELECT Id, MasterLabel FROM LeadStatus WHERE IsConverted=true LIMIT 1];
        lc.setConvertedStatus(convertStatus.MasterLabel);
        lc.setDoNotCreateOpportunity(true)  ;
        Database.LeadConvertResult lcr = Database.convertLead(lc);
        
        }catch(Exception e)
        {
            System.debug(e);
        }
        System.debug(wrap.leads);
        }
        }
       leadrecords.clear();
       allcheck=eachcheck=false;
        for(Lead leadrecords1:[SELECT AnnualRevenue,City,Company,ConvertedAccountId,ConvertedContactId,ConvertedDate,ConvertedOpportunityId,Country,CreatedById,CreatedDate,Description,Email,EmailBouncedDate,EmailBouncedReason,Fax,FirstName,Id,Industry,IsConverted,IsDeleted,IsUnreadByOwner,Jigsaw,JigsawContactId,LastActivityDate,LastModifiedById,LastModifiedDate,LastName,LastReferencedDate,LastViewedDate,Latitude,LeadSource,Longitude,MasterRecordId,MobilePhone,Name,naveenb__CurrentGenerators__c,naveenb__NumberofLocations__c,naveenb__Primary__c,naveenb__ProductInterest__c,naveenb__SICCode__c,NumberOfEmployees,OwnerId,Phone,PostalCode,Rating,Salutation,State,Status,Street,SystemModstamp,Title,Website FROM Lead where IsConverted = false])
        {
            leadrecords.add(new WrapperLead(leadrecords1));
        }
        return null;
    }


    public Boolean eachcheck { get; set; }

    public PageReference checkAll() {
        if(allcheck==true)
        {
            for(WrapperLead wrap : getTotalleads())
            {
                wrap.eachcheck=true;
            }
        }else
        {
            for(WrapperLead wrap : getTotalleads())
            {
                wrap.eachcheck=false;
            }
        }
        return null;
    }


    public Boolean allcheck { get; set; }
    List<WrapperLead> leadrecords= new List<WrapperLead>();
    
       public BulkLeadsCovertController ()
       {
           leadrecords.clear();
        for(Lead leadrecords1:[SELECT AnnualRevenue,City,Company,ConvertedAccountId,ConvertedContactId,ConvertedDate,ConvertedOpportunityId,Country,CreatedById,CreatedDate,Description,Email,EmailBouncedDate,EmailBouncedReason,Fax,FirstName,Id,Industry,IsConverted,IsDeleted,IsUnreadByOwner,Jigsaw,JigsawContactId,LastActivityDate,LastModifiedById,LastModifiedDate,LastName,LastReferencedDate,LastViewedDate,Latitude,LeadSource,Longitude,MasterRecordId,MobilePhone,Name,naveenb__CurrentGenerators__c,naveenb__NumberofLocations__c,naveenb__Primary__c,naveenb__ProductInterest__c,naveenb__SICCode__c,NumberOfEmployees,OwnerId,Phone,PostalCode,Rating,Salutation,State,Status,Street,SystemModstamp,Title,Website FROM Lead where IsConverted = false])
        {
            leadrecords.add(new WrapperLead(leadrecords1));
        }
       }
    public List<WrapperLead> getTotalleads() {
        
        return leadrecords;
    }
    public class WrapperLead
    {
        public Boolean eachcheck { get; set; }
        public Lead leads{get;set;}
        public WrapperLead(Lead leadwrap)
        {
            leads=leadwrap;
        }
    }

}