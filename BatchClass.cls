public class BatchClass implements Database.Batchable<naveenb__Book__c>
{
    public Iterable<naveenb__Book__c> start(Database.BatchableContext bc)
    {
        List<naveenb__Book__c> book1 = [Select name,naveenb__Author__c,naveenb__Edition__c,naveenb__Price__c from naveenb__Book__c];
        return book1;
    }
    public void execute(Database.BatchableContext bc, LIST<naveenb__Book__c> books) 
    {
        for(naveenb__Book__c book2:books)
        {
            book2.naveenb__Author__c='naveenkumar';
            upsert book2;
        }
    }
    public void finish(Database.BatchableContext bc)
    {
        System.debug('finish');
    }
}