<html>
<head>
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
//1.
$db=mysql_connect("localhost","root","123456789");

//2.
mysql_select_db("hayat",$db);
$name=$_POST["name"];

$phone=$_POST["phone"];

$tlocation=$_POST["location"];
$ttype=$_POST["t"];
$age=$_POST["age"];
//3.
$q="update patient_info  set patient_phone='$phone',t_location='$tlocation',t_type='$ttype',patient_age='$age' where patient_name='$name'";

mysql_query($q,$db);
$q2="select * from patient_info where patient_name='$name'";
$r=mysql_query($q2,$db);

//4.
mysql_close($db);



      print("<table border='1'>");
    while($a=mysql_fetch_row($r)){
		print("<tr>");
		foreach($a as $i=>$v)
		print("<th>$v</th>" );
		
		print("</tr>");
	}
          print("</table>");

          print(mysql_num_rows($r));






?>
</body>
</html>