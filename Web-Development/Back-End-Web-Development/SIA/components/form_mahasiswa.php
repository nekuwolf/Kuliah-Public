<div class="container">
    <form method="post" action="components/insert_mahasiswa.php">
        <div class="row mt-2">
            <label class="col-md-3">NIM</label>
            <input class="col-md-9" type="text" id="nim" name="nim" />
        </div>
        <div class="row mt-2">
            <label class="col-md-3">Nama</label>
            <input class="col-md-9" type="text" id="nama" name="nama" />
        </div>
        <div class="row mt-2">
            <label class="col-md-3">Jenis kelamin</label>
            <select class="col-md-9" id="jk" name="jk" >
                <option value="">Pilih JK</option>
                <option value="L">Laki-laki</option>
                <option value="P">Perempuan</option>
            </select>
        </div>
        <div class="row mt-2">
            <label class="col-md-3">Alamat</label>
            <textarea class="col-md-9" type="text" id="alamat" name="alamat" rows="3" ></textarea>
        </div>
        <div class="row mt-2">
            <label class="col-md-3">Telp</label>
            <input class="col-md-9" type="text" id="telp" name="telp" />
        </div>
        <div class="row mt-2">
            <label class="col-md-3">E-Mail</label>
            <input class="col-md-9" type="email" id="email" name="email" />
        </div>
        <div class="row mt-2">
            <label class="col-md-3">Kelahiran</label>
            <input type="text" class="col-md-6" id ="tmp_lahir" name="tmp_lahir" />
            <input type="date" class="col-md-3" id="tgl_lahir" name="tgl_lahir" />
        </div>
        <div class="row mt-2">
            <label class="col-md-3">Angkatan</label>
            <input class="col-md-9" type="text" id="angkatan" name="angkatan" />
        </div>
        <div class="row mt-2">
            <label class="col-md-3">Program Studi</label>
            <select class="col-md-9" id="prodi_id" name="prodi_id" >
                <option value="">Pilih Prodi</option>
                <option value="1">Sistem Informasi</option>
                <option value="2">Sistem Komputer</option>
                <option value="3">Teknologi Informasi</option>
                <option value="4">Bisnis Digital</option>
            </select>
        </div>
        <div class="row mt-2">
            <label class="col-md-3">Status</label>
            <input class="col-md-9" type="text" id="status" name="status" />
        </div>
        <div class="row mt-5">
            <button type="submit" class="btn btn-primary">Kirim</button>
        </div>
    </form>
</div>