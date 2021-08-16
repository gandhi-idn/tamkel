     <!-- modal karyawan -->
     <div class="modal fade" id="Modalkaryawan" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog">
             <div class="modal-content">
                 <div class="modal-header">
                     <h5 class="modal-title" id="exampleModalLabel">Tambah Karyawan</h5>
                     <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                 </div>
                 <div class="modal-body">
                     <form id="form-karya" method="post">
                         <div class="row g-3">
                             <div class="col-sm-12">
                                 <label for="firstName" class="form-label">Nama Lengkap</label>
                                 <input type="text" class="form-control" name="namaleng" minlength="2" required>
                             </div>
                             <div class="col-sm-6">
                                 <label for="firstName" class="form-label">Email</label>
                                 <input type="email" class="form-control" name="email" required>
                             </div>
                             <div class="col-sm-6">
                                 <label for="firstName" class="form-label">Nomor HP</label>
                                 <input type="tel" class="form-control" name="nohp" required>
                             </div>
                             <div class="col-12">
                                 <label for="username" class="form-label">Jenis Kelamin</label>
                                 <div class="input-group has-validation">
                                     <div class="form-check form-check-inline">
                                         <input class="form-check-input" type="radio" name="jk" value="1" required>
                                         <label class="form-check-label" for="inlineRadio1">Laki-laki</label>
                                     </div>
                                     <div class="form-check form-check-inline">
                                         <input class="form-check-input" type="radio" name="jk" value="2" required>
                                         <label class="form-check-label" for="inlineRadio2">Perempuan</label>
                                     </div>
                                 </div>
                             </div>
                             <div class="col-6">
                                 <label for="date" class="form-label">Tanggal Lahir</label>
                                 <input type="date" class="form-control" name="tgl" required>
                             </div>
                             <div class="col-6">
                                 <label for="age" class="form-label">Umur</label>
                                 <input type="text" class="form-control" name="umur" placeholder="XX" required>
                             </div>
                             <div class="col-12">
                                 <label for="address" class="form-label">Alamat</label>
                                 <textarea type="text" class="form-control" name="alamat" placeholder="Jl. A. yani No.59" required></textarea>
                             </div>
                     </form>
                 </div>
                 <div class="modal-footer">
                     <button type="button" id="close" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                     <!-- <button type="button" id="closex" class="btn btn-secondary">Closex</button> -->
                     <button type="submit" data-url="<?= base_url('admin/simpan_karyawan'); ?>" id="submit" class="btn btn-primary">Simpan</button>
                 </div>
             </div>
         </div>
     </div>