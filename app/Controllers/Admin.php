<?php

namespace App\Controllers;

use App\Models\Datatable;
use CodeIgniter\Controller;
use Config\Services;

class Admin extends BaseController
{

    public function index()
    {
        $data['title'] = "Halaman Admin";
        return view('admin/index', $data);
    }

    public function ajax_list()
    {
        $request = Services::request();
        $m_icd = new Datatable($request);
        if ($request->getMethod(true) == 'POST') {
            $lists = $m_icd->get_datatables();
            $data = [];
            $no = $request->getPost("start");
            foreach ($lists as $list) {
                $no++;
                $row = [];
                $row[] = $no;
                $row[] = $list->nama_lengkap;
                $row[] = $list->tgl_masuk;
                $row[] = $list->alamat;
                $row[] = '<a class="btn btn-sm btn-primary" href="javascript:void(0)" title="Edit" onclick="edit_person(' . "'" . $list->id . "'" . ')"><i class="glyphicon glyphicon-pencil"></i> Edit</a>
				  <a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Hapus" onclick="delete_person(' . "'" . $list->id . "'" . ')"><i class="glyphicon glyphicon-trash"></i> Hapus</a>';

                $data[] = $row;
            }
            $output = [
                "draw" => $request->getPost('draw'),
                "recordsTotal" => $m_icd->count_all(),
                "recordsFiltered" => $m_icd->count_filtered(),
                "data" => $data
            ];
            echo json_encode($output);
        }
    }

    public function karyawan()
    {

        $data['title'] = "Data Karyawan";
        // $db      = \Config\Database::connect();
        // $builder = $db->table('karyawan');
        // $builder->select('*');
        // $query = $builder->get();
        // $data['staf'] = $query->getresult();
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

        $dataBerkas = $this->request->getFile('img');
        $fileName = $dataBerkas->getRandomName();
        $dataBerkas->move('assets/images/', $fileName);

        $data_karyawan = array(

            'nama_lengkap' => $this->request->getVar('namaleng'),
            'jk' => $this->request->getVar('jk'),
            'tgl_lahir' => $this->request->getVar('tgl'),
            'alamat' => $this->request->getVar('alamat'),
            'tgl_masuk' => date('Y-m-d H:i:s'),
            'email' => $this->request->getVar('email'),
            'nohp' => $this->request->getVar('nohp'),
            'img' => $fileName,
        );
        $builder->insert($data_karyawan);
        echo json_encode(array("status" => TRUE));
    }
}
