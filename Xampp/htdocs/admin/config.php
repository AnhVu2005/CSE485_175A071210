<?php
 
 $conn = new mysqli('localhost','root','','useraccounts');
  if(!$conn){
 die('Khong the ket noi DB');
  };
  if(isset($_POST['create'])){
    //mysqli_real_escape_string : chống các lệnh như select * from user,...
    $name = mysqli_real_escape_string($conn,$_POST['username']);
    $password = mysqli_real_escape_string($conn,$_POST['password']);
    $email = mysqli_real_escape_string($conn,$_POST['email']);
    $password = password_hash($password,PASSWORD_BCRYPT);
    
    $sql ="INSERT into user (username,email,password) values('$name','$email','$password')";
    $result =mysqli_query($conn,$sql);
    }
 
?>