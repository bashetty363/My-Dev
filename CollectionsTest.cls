//CollectionsTest test class
@isTest
public class CollectionsTest{
    //main method
    public static testMethod void main()
    {
 //create
       //List
       List<String> books = new List<String>() ;
       List<Integer> Price = new List<Integer>();
       //Set
       Set<String> city = new Set<String>();
       Set<Integer> code = new Set<Integer>();
       //Map
       Map<String,Integer> itemcost=new Map<String,Integer>();
 //add
       //List
       books.add('Apex');
       books.add('Visual force');
       price.add(2500);
       price.add(1500);
       //Set
       city.add('Hyderabad');
       city.add('Nizamabad');
       code.add(500008);
       code.add(503213);
       //Map
       itemcost.put('pen',15);
       itemcost.put('Note Book',30);
//display
       //List
       System.debug('The data In List After Add is' +books);
       System.debug('The data in List After Add is'+price);
       //Set
       System.debug('The Data in Set After Add is ' +city);
       System.debug('The Dta in Set After Add is ' +code);
       //Map
       System.debug('The data in Map After Add is ' +itemcost);
//remove
       //List
       books.remove(1);
       price.remove(1);
	   System.debug('The data In List After Remove is' +books);
       System.debug('The data in List After Remove is'+price);
       //Set
       city.remove('Hyderabad');
       code.remove(500008);
       System.debug('The Data in Set After Remove is ' +city);
       System.debug('The Dta in Set After Remove is ' +code);
       //Map
       itemcost.remove('pen');
       System.debug('The Data in Map After REmove is ' +itemcost);
	}//end of main method 
}//end of test class