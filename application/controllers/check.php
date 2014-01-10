<?php
	class Check extends CI_Controller
	{
		public function checkview()
		{
			$this->load->view('checkview');
			$this->load->model('checkmodel');
			$this->checkmodel->getqueries();
		}
	}
?>