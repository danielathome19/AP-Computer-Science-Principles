import java.util.*;

/*
Sam Summer 4
Linda Lazy 2
Paul Prodder 5
K.C. Master 8
Richie Reader 6
*/

public class Prog505a {
  public static int calc(int br) {
    if (br <= 3) return br * 10;
    if (br <= 6) return 30 + (br-3) * 15;
    return 30 + 45 + (br-6) * 20;
  }
  
  public static void main(String[] args) {
    Scanner input = new Scanner(System.in);
    ArrayList<String> names = new ArrayList<String>();
    ArrayList<Integer> books = new ArrayList<Integer>();
    ArrayList<Integer> points = new ArrayList<Integer>();

    System.out.print("Please enter the # of people to be entered: ");
    int n = input.nextInt();
    System.out.println();

    for (int lcv = 0; lcv < n; lcv++) {
      System.out.print("Enter first name: ");
      String first = input.next();

      System.out.print("Enter last name: ");
      String last = input.next();
      
      System.out.print("Enter # of books read: ");
      int booksread = input.nextInt();
      System.out.println();

      names.add(first + " " + last);
      books.add(booksread);
    }

    for (int lcv = 0; lcv < n; lcv++) {
      int p = calc(books.get(lcv));
      points.add(p);
    }

    for (int lcv = 0; lcv < n; lcv++) {
      System.out.printf("%s\t%d\t%d\n", 
             names.get(lcv), books.get(lcv), points.get(lcv));
    }
    
  }
}