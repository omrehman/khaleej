<?php
class Login extends CI_Controller
{
	public function login_view()
	{
		
		//echo "ffdfdfd";
            $this->load->model('loginmodel');
		if($this->input->post('sub'))
		{
			//print_r($this->input->post);
			echo "dfdfd";
                        
//			die();
			$user = $this->input->post('id');
			$pass = $this->input->post('pass');
                        echo 
                        
                        
			$this->loginmodel->validateLogin($user,$pass);
		
		}
                
                
		$this->load->view('login/login_view');
	}
	
}
