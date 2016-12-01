public with sharing class DuplicateContoller {

    public List<Book__c> getBookDetails1() {
        return books;
    }

    List<Book__c> books = new List<Book__c>();
    public DuplicateContoller()
    {
        String bookname=ApexPages.Currentpage().getParameters().get('name');
        books=[Select Id,Name,Edition__c,Author__c,Price__c from Book__c where Name =:bookname];
    }

    
}