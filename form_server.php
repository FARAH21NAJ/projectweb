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
	a{color:black}
</style>
</head>
<body>
<?php

$db=mysql_connect("localhost","root","123456789");


mysql_select_db("hayat",$db);
$name=$_POST["name"];
$email=$_POST["em"];
$gender=$_POST["g"];
$phone=$_POST["t"];
$city=$_POST["c"];
$tlocation=$_POST["location"];
$ttype=$_POST["treatment"];
$age=$_POST["age"];
$password=$_POST["pass"];
$q="insert into patient_info(patient_name,patient_email,patient_gender,patient_phone,patient_city,t_location,t_type,patient_age,patient_psw)values('$name',
'$email','$gender','$phone','$city','$tlocation','$ttype','$age','$password')";
mysql_query($q,$db);


$q2="select * from patient_info where patient_name='$name'";
$r=mysql_query($q2,$db);


mysql_close($db);



       //   print(mysql_num_rows($r));


print("Welcome ".$_POST["name"]." to Al-Hayat care center, We wish you good health<br>");
print("confirm your information <br>");


 print("<table border='1'>");
    while($a=mysql_fetch_row($r)){
		print("<tr>");
		foreach($a as $i=>$v)
		print("<th>$v</th>" );
		
		print("</tr>");
	}
          print("</table>");
$total=30;
if($_POST["location"]=="your house"){
	$total+=5;
if($_POST["c"]!="amman")
	$total+=10;
}
print("total=$total JD");

print("<br><br><br><br>");




?>
<a href="update.html">**TO UPDATE CLICK HERE**<a><BR>
<a href="deletep.html">**TO DELETE CLICK HERE**<a>
</body>
</html>