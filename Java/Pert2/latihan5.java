import java.util.Scanner;

public class latihan5 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Masukkan nama anda : ");
        String nama = scanner.nextLine();
        System.out.println(String.format("Halo %s", nama));
        scanner.close();
    }
}