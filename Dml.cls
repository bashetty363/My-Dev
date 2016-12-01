@isTest
public class Dml{
 		public static testMethod void main()
        {
            naveenb__Supplier__c sup= new naveenb__Supplier__c();
            sup.naveenb__Supplier_Name__c='praveen';
            sup.naveenb__Status__c='Success';
            sup.naveenb__City__c='Hyd';
            try
            {
            insert sup; 
            }catch(DMLException de)  
            {
            System.debug('Error During Insertion'+de);
            }
        }
}