<html>
<head>
<style>
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
$email=$_POST["em"];


//3.
$q="delete from patient_info where patient_email='$email'";
mysql_query($q,$db);


mysql_close($db);
print("deleted successflly");
/*$q2="select * from std_info";
$r=mysql_query($q2,$db);

//4.




      print("<table border='1'>");
    while($a=mysql_fetch_row($r)){
		print("<tr>");
		foreach($a as $i=>$v)
		print("<th>$v</th>" );
		
		print("</tr>");
	}
          print("</table>");

          print(mysql_num_rows($r));
*/










?>
</body>
</html>