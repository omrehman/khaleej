<?php
class Registermodel extends CI_Model
{
 	function insertData($id,$user,$full,$mob,$addr)
	{
		
		$this->db->set('user_id',$id);
		$this->db->set('name',$user);
		$this->db->set('full_name',$full);
		$this->db->set('mobile',$mob);
		$this->db->set('address',$addr);
		$data = array('user_id'=>$id,'name'=>$user,'full_name'=>$full,'mobile'=>$mob,'address'=>$addr);
		$cnt = $this->db->insert('registration',$data);
		if($cnt > 0)
		{

		}
	}
}
