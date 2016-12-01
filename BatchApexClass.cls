global Class BatchApexClass implements Database.Batchable<naveenb__Book__c>
{
   global Iterable<naveenb__Book__c> start(Database.BatchableContext bc) 
    {
        System.debug('i am from start');
        List<naveenb__Book__c> books = [Select Name,naveenb__Author__c,naveenb__Edition__c,naveenb__Price__c from naveenb__Book__c];
        return books;
    }
  global void execute(Database.BatchableContext bc, LIST<naveenb__Book__c> scope) 
   {
       System.debug('i am from execute');
       for(naveenb__Book__c book:scope)
       {
           if(book.naveenb__Price__c<=2000)
           {
               book.naveenb__Price__c=900;
           }
           try{
           Update book;
               }Catch(Exception e)
                   {
                   }
       }
       
   }
  global void finish(Database.BatchableContext bc)
       {
           System.debug('i am from finish()');
           Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage() ;
            String[] toAddresses = new String[] {'bashetty363@gmail.com'};
    mail.setToAddresses(toAddresses) ;
    mail.setInReplyTo('bashetty22@gmail.com');
    mail.setSubject('Records Update issue');
    string body= '<html lang="ja"><body>'+ 'Hi Bashetty363' +'<b>Your Records are updated Sucessfully.</b>'+'<br><br>Please Check</body></html>';
    mail.setHtmlBody(body);
         Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
       }
}