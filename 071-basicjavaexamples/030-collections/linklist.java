import java.util.LinkedList;

class linklist{


public static void main(String args[]){
LinkedList<String> list = new LinkedList<String>();
list.add("A");
list.add("B");
//list.add("C");
//list.add("D");

// split the list into two
LinkedList<String> list2 = new LinkedList<String>();
// get first 3 elemts from list and add to list2
list2.addAll(list.subList(0, 3));
// remove first 3 elements from list
list.subList(0, 3).clear();


System.out.println(list);
System.out.println(list2);


}
    
    }
