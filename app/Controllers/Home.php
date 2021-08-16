<?php

namespace App\Controllers;

class Home extends BaseController
{
	public function index()
	{
		if (in_groups('admin')) {
			return redirect()->to(site_url('admin'));
		} elseif (in_groups('staf')) {
			return redirect()->to(site_url('user'));
		} elseif (in_groups('bos')) {
			return redirect()->to(site_url('home/bos'));
		} else {
			return redirect()->to(site_url('/'));
		}
	}

	public function bos()
	{
		echo "bosku";
	}

	public function test()
	{
		return view('test');
	}
}
