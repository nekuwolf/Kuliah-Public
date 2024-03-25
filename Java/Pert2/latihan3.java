public class latihan3 {
    public static void main(String[] args) {
        int i = 0;
        while (i < 10) {
            System.out.println("Angka ke " + i);
            i++;
        }

        ulangi(5, 10);

        String[] kotaku = { "Denpasar", "Badung", "Tabanan" };
        for (String nama : kotaku) {
            System.out.println(nama);
        }
    }

    public static void ulangi(int a, int b) {
        for (int x = a; x <= b; x++) {
            System.out.println("Looping dengan for ke " + x);
        }
    }

}
