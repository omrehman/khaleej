
<?php 

//if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Test extends CI_Controller
{
	public function index()
	{
		$this->load->view('welcome_message');
	}
	public function testing()
	{
		$this->load->view('test/testing');
		
	}

	public function testview()
	{
		$data['todo_list'] = array('Clean House', 'Call Mom', 'Run Errands');

		$data['title'] = "My Real Title";
		$data['heading'] = "My Real Heading";

		$this->load->view('testview', $data);
	}

}


