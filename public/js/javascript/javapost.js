    $(document).ready(function() {            

            $('#submit').on('click', function() {

                var url = $(this).data('url');
                var formData = new FormData( $("#form-karya")[0] );
    
                $.ajax({

                    url: url,
                    type: "POST",
                    data: formData,
                    async : false,
                    cache : false,
                    contentType : false,
                    processData : false,                   
                        
                    success: function(response) {                        
                        if (response.status) {
                              success();                      
                        }                         
                    },
                    error: function (jqXHR, textStatus, errorThrown)
                    {
                        alert('Error tambah / update data');
                        $('#form-karya')[0].reset();
                        $('#submit').removeClass("btn btn-secondary").addClass("btn btn-primary");
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

            function refreshTable() {
                table.ajax.reload(null, false); //reload datatable ajax 
            }

            function success() {
                refreshTable();
                $('#Modalkaryawan').modal('hide');
                $('#form-karya')[0].reset();
                $('#submit').removeClass("btn btn-secondary").addClass("btn btn-primary");
                $('#submit').text('Simpan');    
            }
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
