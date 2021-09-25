<?php
$servername = "localhost";
$username = "root";
$password = "usbw";
$dbname = "loginsystem";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
$name=mysqli_real_escape_string($conn,$_REQUEST['lsu_name']);
$email=mysqli_real_escape_string($conn,$_REQUEST['lsu_email']);
$password=mysqli_real_escape_string($conn,$_REQUEST['lsu_password']);

$sql="INSERT INTO ls_user (lsu_name, lsu_email, lsu_password) VALUES ('$name', '$email', '$password')";

if(mysqli_query($conn, $sql))
{
    echo "Register Sucessfully.";
}
else{
    echo "Error";
}

mysqli_close($conn);
?>