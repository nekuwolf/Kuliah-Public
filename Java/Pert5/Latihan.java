import java.util.ArrayList;

public class Latihan {
    public static void main(String[] args) {
        Orang baru = new Orang();
        Orang dua = new Orang("1", "Indrianto", "L", "Denpasar", "0361888123");

        System.out.println(String.format("Nama orang pertama %s", baru.getNama()));
        System.out.println(String.format("Nama orang kedua %s", dua.getNama()));

        ArrayList<Orang> list = new ArrayList<Orang>();
        list.add(dua);
        list.add(new Orang("2", "Made", "L", "Denpasar", "0361888123"));
        list.add(new Orang("3", "Komang", "L", "Denpasar", "0361888123"));
        list.add(new Orang("4", "Sugeng", "L", "Denpasar", "0361888123"));

        Orang[] tiga = new Orang[3];
        tiga[0] = new Orang("1", "Budi", "L", "Denpasar", "0361888123");

        int i = 1;
        for (Orang orang : list) {
            System.out.println(String.format("Orang ke %d adalah %s", i++, orang.getNama()));
        }
    }
}
