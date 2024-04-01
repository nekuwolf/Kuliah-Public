
public class Orang {
    private String _nik;
    private String _nama;
    private String _jk;
    private String _alamat;
    private String _telp;

    public Orang() {
        _nik = "";
        _nama = "";
        _jk = "";
        _alamat = "";
        _telp = "";
    }

    public Orang(String nik, String nama, String jk, String alamat, String telp) {
        _nik = nik;
        _nama = nama;
        _jk = jk;
        _alamat = alamat;
        _telp = telp;
    }

    public String getNik() {
        return _nik;
    }

    public void setNik(String nik) {
        _nik = nik;
    }

    public String getNama() {
        return _nama;
    }

    public void setNama(String nama) {
        _nama = nama;
    }

    public String getJk() {
        return _jk;
    }

    public void SetJk(String jk) {
        _jk = jk;
    }

    public String getAlamat() {
        return _alamat;
    }

    public void setAlamat(String alamat) {
        _alamat = alamat;
    }

    public String getTelp() {
        return _telp;
    }

    public void setTelp(String telp) {
        _telp = telp;
    }
}
