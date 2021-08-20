<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">
    <title><?= $title; ?></title>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url("datatables/datatables.min.css"); ?>" />
    <script src="<?php echo base_url("js/jquery.min.js"); ?>"></script>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/dashboard/">



    <!-- Bootstrap core CSS -->
    <link href="<?= base_url(); ?>/assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        img {
            vertical-align: middle;
            border-style: none;
            width: 40%;
            height: 200px;
            object-fit: cover;
        }
    </style>


    <!-- Custom styles for this template -->
    <link href="<?= base_url(); ?>/css/dashboard.css" rel="stylesheet">
</head>

<body>

    <!-- header -->
    <?= $this->include('templates/header'); ?>
    <!-- end header -->

    <div class="container-fluid">
        <div class="row">

            <!-- sidebar -->
            <?= $this->include('templates/sidebar'); ?>
            <!-- end side bar -->

            <!-- isi halaman -->
            <?= $this->renderSection('halaman'); ?>
            <!-- akhir halaman -->

        </div>
    </div>
    <script src="<?= base_url(); ?>/assets/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
    <script src="<?= base_url(); ?>/js/dashboard.js"></script>

    <!-- Modal -->
    <?= $this->include('templates/modal'); ?>

    <script src="<?php echo base_url("datatables/js/jquery.dataTables.min.js"); ?>"></script>
    <script src="<?php echo base_url("datatables/datatables.min.js"); ?>"></script>

    <script src="<?= base_url(); ?>/js/javascript/javapost.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            var table = $('#table').DataTable({
                "processing": true,
                "serverSide": true,
                "order": [],
                "ajax": {
                    "url": "<?php echo base_url('admin/ajax_list') ?>",
                    "type": "POST"
                },
                //optional
                "lengthMenu": [
                    [5, 10, 25],
                    [5, 10, 25]
                ],
                "columnDefs": [{
                    "targets": [],
                    "orderable": false,
                }, ],
            });

            var now = new Date();

            var day = ("0" + now.getDate()).slice(-2);
            var month = ("0" + (now.getMonth() + 1)).slice(-2);

            var today = now.getFullYear() + "-" + (month) + "-" + (day);
            $('[name="tgl_masuk"]').val(today);
        })
    </script>

</body>




</html>
<!-- Button trigger modal -->