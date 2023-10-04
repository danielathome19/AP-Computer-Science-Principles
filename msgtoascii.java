import java.util.Scanner;

class msgtoascii {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Enter a message: ");
        String msg = input.nextLine();
        String enc = "";
        for (char let : msg.toCharArray())
            enc += (int)let + " ";
        System.out.println(enc);
    }
}