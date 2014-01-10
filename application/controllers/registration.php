<?php

class Register extends CI_Controller
{
	public function register_view()
	{
		$this->load->view('register/register_view');
		//$this->load->model('registermodel');
		/*$this->registermodel->insertRegistration($_POST);
		$this->id=$_POST['id'];
		$this->name=$_POST['name'];
		$this->full=$_POST['full'];
		$this->mob=$_POST['mob'];
		$this->addr=$_POST['addr'];
		$sql = "INSERT INTO mytable (user_id, user_name,full_name,mobile)
        VALUES (".$this->db->escape($title).", ".$this->db->escape($name).")";

$this->db->query($sql);*/
	}
}
