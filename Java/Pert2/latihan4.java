
public class latihan4 {
    public static void main(String[] args) {
        // String[] nama = { "Agus", "Burger", "Kecap" };
        // for (String element : nama) {
        // System.out.println(element);
        // }

        int angka[] = { 70, 20, 30, 50, 100, 80 };

        // List<Integer> list = new ArrayList<>();
        // for (int i = 0; i < angka.length; i++) {
        // list.add(angka[i]);
        // }
        // System.out.println(Collections.min(list));

        System.out.println(min(angka));
        System.out.println(max(angka));

        // for (String number : angka) {
        // System.out.println();
        // }

        // nama.push[] = "Pentol";
    }

    public static int min(int[] array) {
        int current = array[0];
        for (int i = 0; i < array.length; i++) {
            if (current > array[i]) {
                current = array[i];
            }
        }
        return current;
    }

    public static int max(int[] array) {
        int current = array[0];
        for (int i = 0; i < array.length; i++) {
            if (current < array[i]) {
                current = array[i];
            }
        }
        return current;
    }
}
