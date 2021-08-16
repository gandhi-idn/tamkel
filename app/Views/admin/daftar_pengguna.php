<?= $this->extend('templates/index'); ?>

<?= $this->section('halaman'); ?>

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Daftar Pengguna</h1>
    </div>
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <button type="button" class="btn btn-md btn-primary" href=""><span data-feather="user-plus"></span> Tambah Login Pengguna</button>
    </div>
    <div class="table-responsive">
        <table class="table-sm">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Username</th>
                    <th scope="col">Email</th>
                    <th scope="col">Level</th>
                    <th scope="col">Status</th>
                    <th scope="col">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php $i = 1; ?>
                <?php foreach ($users as $user) : ?>
                    <tr>
                        <th scope="row"><?= $i++; ?></th>
                        <td><?= $user->username; ?></td>
                        <td><?= $user->email; ?></td>
                        <td><?= $user->name; ?></td>
                        <td><?= $user->active; ?></td>
                        <td>
                            <a type="button" class="btn btn-xs btn-primary" href="<?= base_url('admin/detail_user/' . +$user->id); ?>">detail</a>
                            <a type="button" class="btn btn-xs btn-warning" href="<?= base_url('admin/edit_user/' . +$user->id); ?>">edit</a>
                            <a type=" button" class="btn btn-xs btn-danger" href="<?= base_url('admin/delete_user/' . +$user->id); ?>">Hapus</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>

</main>

<?= $this->endSection(); ?>