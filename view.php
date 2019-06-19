<?php
include 'header.php';
$val=$_GET['roll'];

$con=mysqli_connect('localhost','root','') or die(mysqli_error($con));
mysqli_select_db($con,"asian") or die(mysqli_error($con));
$sele="SELECT * from student where roll=$val";
$se=mysqli_query($con,$sele);
$row=mysqli_fetch_array($se);


?>
<html>
    <head></head>
    <body>
        <div style="margin:0 auto;"> 
       <p align="center"> <img src="image/<?php echo $row['image'];?> " style="height:200px;width:200px;border-radius:50%; ">
        <br>
        Name:<?php echo $row['name']; ?>
        <br>
        Address:<?php echo $row['address']; ?>
        <br>
        Gender:<?php echo $row['gender']; ?>
        <br></p>
</div>
</body>
</html>

