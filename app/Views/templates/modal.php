     <!-- modal karyawan -->
     <div class="modal fade" id="Modalkaryawan" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog modal-xl">
             <div class="modal-content">
                 <div class="modal-header">
                     <h5 class="modal-title" id="exampleModalLabel">Tambah Karyawan</h5>
                     <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                 </div>
                 <div class="modal-body">
                     <div class="row">
                         <div class="col-md-8">
                             <form id="form-karya" method="post" enctype="multipart/form-data">
                                 <div class="row">
                                     <div class="col-md-6 mb-3">
                                         <label for="firstName" class="form-label">Nama Lengkap</label>
                                         <input type="text" class="form-control" placeholder="Nama Lengkap" name="namaleng" minlength="2" required>
                                     </div>
                                     <div class="col-md-6 mb-3">
                                         <label for="formFileSm" class="form-label">Foto Profil</label>
                                         <input type="file" class="form-control" name="img" id="img">
                                     </div>
                                     <div class="col-md-6 mb-3">
                                         <label for="firstName" class="form-label">Email</label>
                                         <input type="email" class="form-control" placeholder="Email" name="email" required>
                                     </div>
                                     <div class="col-md-6 mb-3">
                                         <label for="firstName" class="form-label">Nomor HP</label>
                                         <input type="tel" class="form-control" placeholder="Nomor HP" name="nohp" required>
                                     </div>
                                     <div class="col-md-6">
                                         <label for="firstName" class="form-label">Jenis Kelamin</label>
                                     </div>
                                     <div class="col-md-12 mb-3">
                                         <div class="form-check form-check-inline">
                                             <input class="form-check-input" type="radio" name="jk" value="1" required>
                                             <label class="form-check-label">Laki-laki</label>
                                         </div>
                                         <div class="form-check form-check-inline">
                                             <input class="form-check-input" type="radio" name="jk" value="2" required>
                                             <label class="form-check-label">Perempuan</label>
                                         </div>
                                     </div>
                                     <div class="col-md-6 mb-3">
                                         <label for="firstName" class="form-label">Tanggal Lahir</label>
                                         <input type="date" class="form-control" name="tgl" required>
                                     </div>
                                     <div class="col-md-6 mb-3">
                                         <label for="firstName" class="form-label">Tanggal Masuk</label>
                                         <input type="date" class="form-control" name="tgl_masuk" disabled>
                                     </div>
                                     <div class="mb-3">
                                         <label for="firstName" class="form-label">Alamat</label>
                                         <textarea type="text" class="form-control" name="alamat" placeholder="Alamat Lengkap" required></textarea>
                                     </div>
                                 </div>
                             </form>
                         </div>
                         <div class="col-md-4">
                             <div class="text-center mb-3">
                                 <img src="<?= base_url('assets/images/default-user.png'); ?>" class="img-thumbnail" alt="...">
                             </div>
                         </div>
                     </div>
                 </div>
                 <div class="modal-footer">
                     <button type="button" id="close" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                     <!-- <button type="button" id="closex" class="btn btn-secondary">Closex</button> -->
                     <button type="submit" data-url="<?= base_url('admin/simpan_karyawan'); ?>" id="submit" class="btn btn-primary">Simpan</button>
                 </div>
             </div>
         </div>
     </div>