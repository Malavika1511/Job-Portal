<?php 
include 'connect.php';
// create a variable
$id=$_POST['id'];
$name=$_POST['name'];
$phone=$_POST['phone'];
$email=$_POST['email'];
$qualif=$_POST['qualif'];
//Execute the query
mysqli_query($connect,"INSERT INTO candidate_details (candidate_id,candidate_name,phone,email,qualification) VALUES ('$id','$name','$phone','$email','$qualif')");				
	if(mysqli_affected_rows($connect) > 0){
	echo "Candidate Details Added !";	
} else {
	echo "Error!! Candidate Details not added";
	echo mysqli_error ($connect);
}
?>

