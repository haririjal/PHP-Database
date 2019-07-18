<?php
$roll=$_POST['roll'];
$name = $_POST['name'];
$address = $_POST['address'];
$gender=$_POST['gender'];

$image=$_FILES['img']['name'];
if($image==""){
	$q = "update student set name='$name', address='$address', gender='$gender'  where roll=$roll";
}else{
	$q = "update student set name='$name', address='$address', gender='$gender', image='$image'  where roll=$roll";
	move_uploaded_file($_FILES['img']['tmp_name'], "image/$image");
}

$con = mysqli_connect('localhost','root','') or die(mysqli_error($con));
$db = mysqli_select_db($con,"asian") or die(mysqli_error($con));

$res = mysqli_query($con,$q) or die(mysqli_error($con));
echo "Your entry has been registered";
header("location:display.php");

?>
