<?php
		session_start();
		if(!(isset($_SESSION['username']))){
				header('location:loginForm.php');
		}
?>
<html>
<head>
<style>
ul {
list-style-type: none;
margin: 0;
padding: 0;
overflow: hidden;
background-color: #0040ff;
}

li {
float: left;
}

li a {
display: block;
color: white;
text-align: center;
padding: 14px 16px;
text-decoration: none;
}

li a:hover {
background-color: #111;
}
</style>
</head>
<body>

<ul>
<li><a class="active" href="display.php">Home</a></li>
<li><a href="form.php">Add Data</a></li>
<li><a href="logout.php">Log Out</a></li>
<li><a href="csv.php">Dump to Excel</a></li>


</ul>

</body>
</html>
