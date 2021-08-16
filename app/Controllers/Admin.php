<?php

namespace App\Controllers;


class Admin extends BaseController
{

    public function index()
    {
        $data['title'] = "Halaman Admin";
        return view('admin/index', $data);
    }

    public function karyawan()
    {

        $data['title'] = "Data Karyawan";
        $db      = \Config\Database::connect();
        $builder = $db->table('karyawan');
        $builder->select('*');
        $query = $builder->get();
        $data['staf'] = $query->getresult();
        return view('admin/karyawan', $data);
    }

    public function userlist()
    {
        $data['title'] = "Daftar Pengguna";
        $db      = \Config\Database::connect();
        $builder = $db->table('users');
        $builder->select('users.id,username,email,name,created_at,updated_at,active,deleted_at');
        $builder->join('auth_groups_users', 'auth_groups_users.user_id = users.id');
        $builder->join('auth_groups', 'auth_groups.id = auth_groups_users.group_id');
        $query = $builder->get();
        $data['users'] = $query->getresult();
        return view('admin/daftar_pengguna', $data);
    }

    public function simpan_karyawan()
    {
        $db      = \Config\Database::connect();
        $builder = $db->table('karyawan');

        $data_karyawan = array(

            'nama_lengkap' => $this->request->getVar('nama_lengkap'),
            'jk' => $this->request->getVar('jk'),
            'tgl_lahir' => $this->request->getVar('tgl_lahir'),
            'alamat' => $this->request->getVar('alamat'),
            'umur' => $this->request->getVar('umur'),
            'email' => $this->request->getVar('email'),
            'nohp' => $this->request->getVar('nohp'),
        );

        $builder->insert($data_karyawan);
        echo json_encode(array("status" => TRUE));
    }
}
