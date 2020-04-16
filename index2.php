<!DOCTYPE html>
<html>
<head>
	<title>Pagination System</title>
	<style type="text/css">
		
		table{
			width: 100%;
			text-align: center;
		}
		th,td{
			width: 25%;
			text-align: left;
		}
		th{
			text-align: center;
		}
		button{

		   width: 10%;
		   height: 5%;
		   border-radius: 5px;
		   border: none;
		   text-decoration: underline;
		   background: grey;
		}
	</style>
</head>
<body>
	<?php
$con=mysql_connect("localhost","root","");
mysql_select_db("bd_reunion");
$nb_par_page=10;
$all=mysql_query("SELECT COUNT(*) AS total FROM elem");
$total=mysql_fetch_assoc($all);
$nb_page=ceil($total["total"]/10);
if (isset($_GET['page'])) {
	$page=$_GET['page'];
}
else{
	$page=1;
}

?>
   <form action="index.php" method="POST">
	<table border="1" cellpadding="0" cellspacing="0">
		<tr>
			<th>
				id
			</th>
			<th>
				Nom et Prenoms
			</th>
			<th>
				Nombres d'uv
			</th>
		<?php
		$debut=($page-1)*$nb_par_page;
		$sql=mysql_query("SELECT  * FROM elem LIMIT  ".$debut.", ".$nb_par_page) or die(mysql_error());
		while ($result=mysql_fetch_assoc($sql)) {
		echo "	<tr>
			<td>
				".$result['id']."
			</td>
			<td>
				".$result['name']."
			</td>
			<td>
				".$result['UV']."
			</td>
		</tr>
			";

		}

		?>
		
	</table>   	
	<center>
		<?php

		if ($page>1) {
			echo "<button><a href='index2.php?page=".($page-1)."'>Page precedente</a> </button>" ;
	}

	if ($nb_page>$page) {
			echo "<button><a href='index2.php?page=".($page+1)."'>Page Suivante</a> </button>" ;
	}
		?>
	</center> 

   </form>
</body>
</html>

