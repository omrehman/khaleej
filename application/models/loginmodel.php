<?php 

class loginmodel extends CI_Model
{
	
        
        public function  validateLogin($username,$password){
        $this->db->select('*');
        $this->db->from("login_table");
        $this->db->where("username",$username);
        $result = $this->db->get();
//        echo $this->db->last_query();
//        print_r($result);
        foreach ($result->result_array() as $row) {
           // echo "ddd";
           $db_password = $row["password"];
           if($db_password == md5($password))
           {
               echo "<script>alert('sucess!!');</script>";
           }
 else {
     echo "<script>alert('fail!!');</script>";
 }
           
        }// ENDS [ foreach ($result->array() as $row) ]
        }//FUNCTION ENDS [ public function  validateLogin($username,$password) ]
}
