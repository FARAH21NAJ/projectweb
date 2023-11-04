<html>
<head>
<meta charset="utf-8">
<style >
body{
	
	background-image:url(bb2.png);
	background-position:center;
	background-size:cover;
	font-family:cursive;;
	margin-top:40px;
	font-size:25px;
	font-weight:bold;
	}

</style>
</head>
<body>
<?php
$db=mysql_connect("localhost","root","123456789");
mysql_select_db("hayat",$db);


$email=$_POST["email"];
$psw=$_POST["password"];

$q="select * from patient_info where patient_email='$email' and patient_psw='$psw'";
$r=mysql_query($q,$db);

mysql_close($db);

if(mysql_num_rows($r)>0)
	header("location:http://localhost/projectweb/page1.html");
else
		header("location:http://localhost/projectweb/web.html");
	



?>

</body>
</html>