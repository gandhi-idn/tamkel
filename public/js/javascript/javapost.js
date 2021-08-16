    $(document).ready(function() {            

            $('#submit').on('click', function() {

                var url = $(this).data('url');
                
    
                $.ajax({
                    url: url,
                    type: "POST",
                    data: {
                        'nama_lengkap': $('[name="namaleng"]').val(),
                        'jk': $('[name="jk"]:checked').val(),
                        'tgl_lahir': $('[name="tgl"]').val(),
                        'alamat': $('[name="alamat"]').val(),
                        'umur': $('[name="umur"]').val(),
                        'email': $('[name="email"]').val(),
                        'nohp': $('[name="nohp"]').val(),
                    },
                    dataType: "JSON",
    
                    beforeSend: function() {
                        $('#submit').removeClass("btn btn-primary").addClass("btn btn-secondary");
                        $('#submit').text('wait...');
                        
                    },
    
                    success: function(response) {                        
                        if (response.status) {                            
                            
                            $('#Modalkaryawan').modal('hide');
                        } 
                        $('#form-karya')[0].reset();
                        $('#submit').removeClass("btn btn-secondary").addClass("btn btn-primary");
                        $('#submit').text('Simpan');
                    },
                    error: function (jqXHR, textStatus, errorThrown)
                    {
                        alert('Error tambah / update data');
                        $('#submit').text('Simpan'); //change button text                        
                    }
                });
            });

            //umur otomatis untuk format tanggal chrome atau browser dengan bahasa indonesia
            $('[name="tgl"]').change(function() {                
                var dob = $('[name="tgl"]').val();
                dob = new Date(dob);
                var today = new Date();
                var age = Math.floor((today-dob) / (1000 * 60 * 60 * 24 * 365.25));
                $('[name="umur"]').val(age);
            });

            //umur otomatis untuk format tanggal chrome atau browser dengan bahasa indonesia
            // $('[name="tgl"]').change(function() {                
            //     var dob = $('[name="tgl"]').val();
            //     dob = new Date(dob);
            //     var today = new Date();
            //     var age = Math.floor((today-dob) / (365.25 * 24 * 60 * 60 * 1000));
            //     $('[name="umur"]').val(age);
            // });
    
            // $('#closex').on('click', function(event) {
            //     // alert("js outside ok!!!");
            // });
    });
