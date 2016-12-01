public  class BookingSlotPageController {
    public String listseats2{set; get;}
    public PageReference actFun2() {
        List<BookingSlot__c> lstslots=new List<BookingSlot__c>();
        List<String> deserializedInvoices = (List<String>)JSON.deserialize(listseats2, List<String>.class);
        for(Integer i=0 ; i<deserializedInvoices.size(); i++)
        {
            BookingSlot__c eachslot=[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c where Name=:deserializedInvoices[i].subString(0,1) and Seat_No__c=:Integer.valueOf(deserializedInvoices[i].subString(1,deserializedInvoices[i].length()))];
            lstslots.add(eachslot);
        }
        for(Integer i=0; i<lstslots.size(); i++)
        {
            lstslots[i].Status__c='Booked';
        }
        update lstslots;
        if(!test.isRunningTest()){
        repeatedMethod();
        }
        return null;
    }


    public PageReference actFun1() {
        List<BookingSlot__c> lstslots=new List<BookingSlot__c>();
        List<String> deserializedInvoices = (List<String>)JSON.deserialize(listseats1, List<String>.class);
        for(Integer i=0 ; i<deserializedInvoices.size(); i++)
        {
            BookingSlot__c eachslot=[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c where Name=:deserializedInvoices[i].subString(0,1) and Seat_No__c=:Integer.valueOf(deserializedInvoices[i].subString(1,deserializedInvoices[i].length()))];
            lstslots.add(eachslot);
        }
        for(Integer i=0; i<lstslots.size(); i++)
        {
            lstslots[i].Status__c='Open';
        }
        update lstslots;
        repeatedMethod();
        return null;
    }
    public String listseats1{set; get;}
    public String listseats{set; get;}
    public PageReference actFun() {
        
        List<BookingSlot__c> lstslots=new List<BookingSlot__c>();
        List<String> deserializedInvoices = (List<String>)JSON.deserialize(listseats, List<String>.class);
        for(Integer i=0 ; i<deserializedInvoices.size(); i++)
        {
            BookingSlot__c eachslot=[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c where Name=:deserializedInvoices[i].subString(0,1) and Seat_No__c=:Integer.valueOf(deserializedInvoices[i].subString(1,deserializedInvoices[i].length()))];
            lstslots.add(eachslot);
        }
        for(Integer i=0; i<lstslots.size(); i++)
        {
            lstslots[i].Status__c='Processing';
        }
        update lstslots;
        repeatedMethod();
        return null;
    }


    public List<BookingSlot__c> bookingSlotsL2 { get; set; }

    public List<BookingSlot__c> bookingSlotsL1 { get; set; }

    public List<BookingSlot__c> bookingSlotsK2 { get; set; }

    public List<BookingSlot__c> bookingSlotsK1 { get; set; }

    public List<BookingSlot__c> bookingSlotsJ2 { get; set; }

    public List<BookingSlot__c> bookingSlotsJ1 { get; set; }

    public List<BookingSlot__c> bookingSlotsI2 { get; set; }

    public List<BookingSlot__c> bookingSlotsI1 { get; set; }

    public List<BookingSlot__c> bookingSlotsH2 { get; set; }

    public List<BookingSlot__c> bookingSlotsH1 { get; set; }

    public List<BookingSlot__c> bookingSlotsG { get; set; }

    public List<BookingSlot__c> bookingSlotsF2 { get; set; }

    public List<BookingSlot__c> bookingSlotsF1 { get; set; }

    public List<BookingSlot__c> bookingSlotsE2 { get; set; }

    public List<BookingSlot__c> bookingSlotsE1 { get; set; }

    public List<BookingSlot__c> bookingSlotsD2 { get; set; }

    public List<BookingSlot__c> bookingSlotsD1 { get; set; }

    public List<BookingSlot__c> bookingSlotsC2 { get; set; }

    public List<BookingSlot__c> bookingSlotsC1 { get; set; }

    public List<BookingSlot__c> bookingSlotsB2 { get; set; }

    public List<BookingSlot__c> bookingSlotsB1 { get; set; }
    
    public List<BookingSlot__c> bookingSlotsA { get; set; }
    
    public BookingSlotPageController()
    {
        repeatedMethod();
    }
    public void repeatedMethod()
    {
        bookingSlotsA = new List<BookingSlot__c>();
        bookingSlotsA =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='A' order by Seat_No__c];
        
        bookingSlotsB1 = new List<BookingSlot__c>();
        bookingSlotsB1 =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='B' order by Seat_No__c limit 10];
        
        bookingSlotsB2 = new List<BookingSlot__c>();
        bookingSlotsB2 =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='B' and Seat_No__c>10 order by Seat_No__c limit 10];
        
        bookingSlotsC1 = new List<BookingSlot__c>();
        bookingSlotsC1 =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='C' order by Seat_No__c limit 10];
        
        bookingSlotsC2 = new List<BookingSlot__c>();
        bookingSlotsC2 =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='C' and Seat_No__c>10 order by Seat_No__c limit 10];
        
        bookingSlotsD1 = new List<BookingSlot__c>();
        bookingSlotsD1 =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='D' order by Seat_No__c limit 10];
        
        bookingSlotsD2 = new List<BookingSlot__c>();
        bookingSlotsD2 =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='D' and Seat_No__c>10 order by Seat_No__c limit 10];
        
        bookingSlotsE1 = new List<BookingSlot__c>();
        bookingSlotsE1 =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='E' order by Seat_No__c limit 10];
        
        bookingSlotsE2 = new List<BookingSlot__c>();
        bookingSlotsE2 =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='E' and Seat_No__c>10 order by Seat_No__c limit 10];
        
        bookingSlotsF1 = new List<BookingSlot__c>();
        bookingSlotsF1 =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='F' order by Seat_No__c limit 10];
        
        bookingSlotsF2 = new List<BookingSlot__c>();
        bookingSlotsF2 =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='F' and Seat_No__c>10 order by Seat_No__c limit 10];
        
        bookingSlotsG = new List<BookingSlot__c>();
        bookingSlotsG =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='G' order by Seat_No__c];
        
        bookingSlotsH1 = new List<BookingSlot__c>();
        bookingSlotsH1 =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='H' order by Seat_No__c limit 10];
        
        bookingSlotsH2 = new List<BookingSlot__c>();
        bookingSlotsH2 =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='H' and Seat_No__c>10 order by Seat_No__c limit 10];
        
        bookingSlotsI1 = new List<BookingSlot__c>();
        bookingSlotsI1 =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='I' order by Seat_No__c limit 10];
        
        bookingSlotsI2 = new List<BookingSlot__c>();
        bookingSlotsI2 =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='I' and Seat_No__c>10 order by Seat_No__c limit 10];
        
        bookingSlotsJ1 = new List<BookingSlot__c>();
        bookingSlotsJ1 =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='J' order by Seat_No__c limit 10];
        
        bookingSlotsJ2 = new List<BookingSlot__c>();
        bookingSlotsJ2 =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='J' and Seat_No__c>10 order by Seat_No__c limit 10];
        
        bookingSlotsK1 = new List<BookingSlot__c>();
        bookingSlotsK1 =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='K' order by Seat_No__c limit 10];
        
        bookingSlotsK2 = new List<BookingSlot__c>();
        bookingSlotsK2 =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='K' and Seat_No__c>10 order by Seat_No__c limit 10];
        
        bookingSlotsL1 = new List<BookingSlot__c>();
        bookingSlotsL1 =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='L' order by Seat_No__c limit 10];
        
        bookingSlotsL2 = new List<BookingSlot__c>();
        bookingSlotsL2 =[Select Id,Name,is_Active__c,Seat_No__c,Status__c from BookingSlot__c  where Name='L' and Seat_No__c>10 order by Seat_No__c limit 10];
    }
    
    
    
}