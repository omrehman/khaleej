function validate_login(login)
{
	var pass = login.pass.value;
	var id = login.id.value;
	if(pass == "" || id == "" )
	{
		alert("Enter User Id And Password");
		return true;
	}
		return false;
}
