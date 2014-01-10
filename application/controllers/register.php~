<?php

class Register extends CI_Controller
{
 function __construct()
    {
        // Call the Model constructor
        parent::__construct();

    }
    

	public function register_view()
	{
		
		$this->load->model('registermodel');
		$this->load->view('register/register_view');
		if($this->input->post('submit'))
		{
		
		$id = $this->input->post('id');
		$user = $this->input->post('user');
		$full = $this->input->post('full');
		$mob = $this->input->post('mob');
		$addr = $this->input->post('addr');
		$this->registermodel->insertData($id,$user,$full,$mob,$addr);
		}

	$this->session->set_userdata("user", array(1=>"hihiihihi",2=>"helllo"));
	$user=$this->session->userdata("user");
	//echo "sesssss>";
	//print_r($user);
		
	}
}
