<?php
if(isset($_POST['submit'])){
    $filename=$_FILES['img']['name'];//name of file in filename//
if(move_uploaded_file($_FILES['img']['tmp_name'],"image/$filename"))
{
$n = $_POST['name'];
$add = $_POST['address'];
$gen=$_POST['gender'];
$con = mysqli_connect('localhost','root','') or die(mysqli_error($con));
$db = mysqli_select_db($con,"asian") or die(mysqli_error($con));
$q = "insert into student values('','$n','$add','$gen', '$filename')";
$res = mysqli_query($con,$q) or die(mysqli_error($con));
echo "Your entry has been registered";
header("location:display.php");
}
}
else
echo "Error";
?>