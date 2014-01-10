<!--<html>
<head>
<script type = "text/javascript" src = "<?php echo base_url(); ?>public_html/javascript/validate_login.js"></script>
</head>
<body>-->
<?php
include APPPATH.'views/layout/header.php';

?>
<form action ="<?php echo base_url(); ?>index.php/login/login_view" method ="post" name = "log" id = "log" >
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<table align ="center" border ="1">
	<tr>
	<td>USER NAME :</td>
	<td><input type = "text" name ="id" id ="id" ></td>
	</tr>
	<tr>
	<td>PASSWORD :</td>
	<td><input type="password" id = "pass" name = "pass"></td>
	</tr>
	<tr></tr>
	<tr>
	<td><input type = "submit" name ="sub" id ="sub" value="Login"></td>
	
	</tr>
</table>
</form>
<?php
include APPPATH.'views/layout/footer.php';
?>
<!--
</body>

<html>-->
