<?php


$db_host ='localhost';
$db_user='root';
$db_passwd='tiger';
$db_name='2015cse011';

$dbh = mysqli_connect($db_host,$db_user,$db_passwd,$db_name) or die("error connecting to the database");
echo "successfully connected"."<br/>"; 
$q ="select * from votes";
$result = mysqli_query($dbh,$q) or die("error quering the database");
//OR we can use: mysqli_fetch_assoc($result);
while($row=mysqli_fetch_array($result,MYSQLI_ASSOC))
{
echo '<input type="radio" name="candidate" value="'.$row['name'].' ">'.$row['name'].'</input><br/>';
}
