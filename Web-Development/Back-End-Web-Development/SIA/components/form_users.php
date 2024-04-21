<div class="container">
    <form method="post" action="components/insert_users.php">
        <div class="row mt-2">
            <label class="col-md-3">Nama</label>
            <input class="col-md-9" type="text" id="nama" name="nama" />
        </div>
        <div class="row mt-2">
            <label class="col-md-3">Email</label>
            <input class="col-md-9" type="email" id="email" name="email" />
        </div>
        <div class="row mt-2">
            <label class="col-md-3">Password</label>
            <input class="col-md-9" type="password" id="password" name="password" />
        </div>
        <div class="row mt-2">
            <label class="col-md-3">Role</label>
            <select class="col-md-9" id="role" name="role" >
                <option value="">Pilih Role</option>
                <option value="admin">Administrator</option>
                <option value="user">User</option>
            </select>
        </div>
        <div class="row mt-5">
            <button type="submit" class="btn btn-primary">Kirim</button>
        </div>
    </form>
</div>