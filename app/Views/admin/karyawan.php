<?= $this->extend('templates/index'); ?>

<?= $this->section('halaman'); ?>

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Daftar Karyawan</h1>
    </div>
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#Modalkaryawan"><span data-feather=" user-plus"></span>
            Tambah Data Karyawan
        </button>
    </div>

    <table id="table" class="table table-striped">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Nama Lengkap</th>
                <th scope="col">Umur</th>
                <th scope="col">Alamat</th>
                <th scope="col">Aksi</th>
            </tr>
        </thead>
        <tbody>
            <?php $i = 1; ?>
            <?php foreach ($staf as $kuli) : ?>
                <tr>
                    <th scope="row"><?= $i++; ?></th>
                    <td><?= $kuli->nama_lengkap; ?></td>
                    <td><?= $kuli->umur; ?></td>
                    <td><?= $kuli->alamat; ?></td>
                    <td>
                        <div class="dropdown">
                            <a class="btn btn-outline-info btn-sm dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                                Aksi
                            </a>

                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                <li><a class="dropdown-item" href="<?= base_url('admin/detail_staf/' . +$kuli->id); ?>">Detail</a></li>
                                <li><a class="dropdown-item" href="<?= base_url('admin/edit_staf/' . +$kuli->id); ?>">Edit</a></li>
                                <li><a class="dropdown-item" href="<?= base_url('admin/delete_staf/' . +$kuli->id); ?>">Hapus</a></li>
                            </ul>
                        </div>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

</main>


<?= $this->endSection(); ?>