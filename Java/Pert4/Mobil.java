// Mobil.java
public class Mobil {
    private String merk;
    // private int tahun_buat;

    public void setMerk(String m) {
        this.merk = m;
    }

    public String getMerk() {
        return this.merk;
    }

    public void bergerak() {
        System.out.print("Mobil bergerak\n");
    }

    public int jarak() {
        int hasil = 100;
        return hasil;
    }

    public String nama() {
        String nama_mobil = "HondaCRV";
        return nama_mobil;
    }

    public String warna() {
        String warna_mobil = "Merah";
        return warna_mobil;
    }
}
