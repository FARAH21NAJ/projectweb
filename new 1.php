<html>
<head>

</head>
<body>
<?php
$db=mysql_connect("localhost","root","123456789");
mysql_select_db("hayat",$db);


$name=$_POST["name"];
$email=$_POST["email"];

$q="insert into patient_info(patient_name,patient_email)values('$name','$email')";
mysql_query($q,$db);






mysql_query($q,$db);
mysql_close($db);
?>
</body></html>
