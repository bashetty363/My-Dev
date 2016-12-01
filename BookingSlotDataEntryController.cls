public with sharing class BookingSlotDataEntryController {

    public PageReference updateDataAction() {
        List<BookingSlot__c> lstdata=[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c];
        for(BookingSlot__c bnj:lstdata)
        {
            bnj.Status__c='Open';
        }
        update lstdata;
        return null;
    }


    
    public BookingSlotDataEntryController ()
    {
        enteringSlots = new List<BookingSlot__c>();
        for(Integer i=0; i<20; i++)
        {
        enteringSlots.add(new BookingSlot__c());
        }
       
    }

    public PageReference insertDataAction() {
        try
        {
            insert enteringSlots;
            enteringSlots = new List<BookingSlot__c>();
        for(Integer i=0; i<20; i++)
        {
        enteringSlots.add(new BookingSlot__c());
        }
        }catch(Exception e)
        {
        }
        return null;
    }


    public PageReference deleteRowAction() {
    if(enteringSlots.size()!=1)
    enteringSlots.remove(enteringSlots.size()-1);
        return null;
    }


    public PageReference addRowAction() {
    enteringSlots.add(new BookingSlot__c());
        return null;
    }

    
    public List<BookingSlot__c> enteringSlots { get; set; }
    
   /* public class WrapperBooking
    {
        public BookingSlot__c booking{set; get;}
        public Boolean isDisable { get; set; }
        public WrapperBooking(BookingSlot__c booking1)
        {
            booking=booking1;
            isDisable =true;
        }
    }*/
}