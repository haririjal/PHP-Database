<?php
	$con=mysqli_connect('localhost','root','') or die('can not connect to db');
	mysqli_select_db($con,"asian");
	$q="select * from student";
	$result=mysqli_query($con,$q) or die(mysqli_error($con));

	$f=fopen("data.csv","w");
	while($arr=mysqli_fetch_array($result,MYSQLI_NUM)){
		fputcsv($f,$arr);
	}
	fclose($f);
	header("location:display.php");
?>