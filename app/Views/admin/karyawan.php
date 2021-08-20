<?= $this->extend('templates/index'); ?>

<?= $this->section('halaman'); ?>

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Daftar Karyawan</h1>
    </div>
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#Modalkaryawan"><span data-feather="user-plus"></span>
            Tambah Data Karyawan
        </button>
    </div>

    <table id="table" class="table table-responsive">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Nama Lengkap</th>
                <th scope="col">Taanggal Masuk</th>
                <th scope="col">Alamat</th>
                <th scope="col">Aksi</th>
            </tr>
        </thead>
        <tbody>

        </tbody>
    </table>

</main>


<?= $this->endSection(); ?>