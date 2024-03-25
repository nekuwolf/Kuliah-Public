import java.util.Scanner;

public class Mahasiswa {
    public static void main(String[] args) {
        String nama = getUserInput("Masukkan nama : ");
        float nilai_akhir = hitungNilai();
        String nilai_huruf = konversiHuruf(nilai_akhir);
        System.out.println("Halo, " + nama);
        System.out.println("Nilai akhir: " + nilai_akhir);
        System.out.println("Nilai huruf: " + nilai_huruf);

        /*
         * A : 91-100
         * B+: 86-90
         * B : 80-85
         * C+ : 70-79
         * C : 60-69
         * D : <60
         */
        // System.out.println(konversiHuruf(59));
    }

    private static String konversiHuruf(float nilai) {
        if (nilai > 90 && nilai <= 100) {
            return "A";
        } else if (nilai > 85 && nilai <= 90) {
            return "B+";
        } else if (nilai > 79 && nilai <= 85) {
            return "B";
        } else if (nilai > 69 && nilai <= 79) {
            return "C+";
        } else if (nilai > 59 && nilai <= 69) {
            return "C";
        } else if (nilai >= 0 && nilai <= 59) {
            return "D";
        } else {
            return "Nilai Invalid";
        }
    }

    private static float hitungNilai() {
        int nilai_tugas = Integer.parseInt(getUserInput("Masukkan nilai tugas : "));
        int nilai_quiz = Integer.parseInt(getUserInput("Masukkan nilai quiz : "));
        int nilai_uts = Integer.parseInt(getUserInput("Masukkan nilai UTS : "));
        int nilai_uas = Integer.parseInt(getUserInput("Masukkan nilai UAS : "));
        int bannyak_hadir = Integer
                .parseInt(validateRange(getUserInput("Masukkan absensi kehadrian pertemuan (0 - 14) : "), 0, 14));
        return calcPercentage(nilai_tugas, 10) + calcPercentage(nilai_quiz, 10)
                + calcPercentage((bannyak_hadir / 14) * 100, 10)
                + calcPercentage(nilai_uts, 25) + calcPercentage(nilai_uas, 45);
    }

    private static String validateRange(String value, int min_val, int max_val) {
        int value_new = Integer.parseInt(value);
        while (value_new < min_val || value_new > max_val) {
            value = getUserInput("Invalid input range, retry!: ");
            value_new = Integer.parseInt(value);
        }
        return value;
    }

    private static String getUserInput(String text) {
        @SuppressWarnings("resource") // suppressing warning from "scanner resource leaks"
        Scanner scanner = new Scanner(System.in);
        System.out.print(text);
        String input = scanner.nextLine();
        // scanner.close();
        return input;
    }

    private static float calcPercentage(float value, float percentage) {
        // percentage can take int 10 or float 0.1f which is equal to 10%
        if (percentage >= 0 && percentage <= 1) {
            return value * percentage;
        } else if (percentage >= 0 && percentage <= 100) {
            return value * (percentage / 100);
        } else {
            return 0;
        }
    }
}
