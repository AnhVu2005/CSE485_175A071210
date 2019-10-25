<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <title>Login</title>
</head>
<style>

</style>
<body>
    
    <div style="">
        <form action="" method="post">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                    <h1>Login</h1>
                    <hr class="mb-3">
                    <label for="email"><b>Email</b></label>
                    <input class="form-control" type="text" name="email"  required>
                    
                    <label for="password"><b>Password</b></label>
                    <input class="form-control" type="password" name="password" required>
                    <hr class="mb-3">
                    <input class="btn btn-primary" type="submit" name="login" value="Log in">
                    <p>Not a member yet?<a href="register1.php">Sign up</a></p>
                </div>    
                </div>
            </div>
        </form>
    </div>
    <?php
    $conn = mysqli_connect('localhost','root','','useraccounts');
    if(!$conn){
        die('Failed to connect to DB');
        };
    if (isset($_POST['email'])){
        $email = mysqli_real_escape_string($conn,$_POST['email']);
        
    }
    if (isset($_POST['password'])){
        $password = mysqli_real_escape_string($conn,$_POST['password']);
    }
    if(isset($_POST['login'])){
        $sql="SELECT * FROM users WHERE email='$email' ";
        
            $result=mysqli_query($conn,$sql);
            $row = mysqli_fetch_assoc($result);
            if(password_verify($password, $row['password'])){
                $_SESSION['email']=$email;
                header("location:index.php");
            }
            else{
                echo 'Username/Password is incorrect';
            }
        }
?>
</body>
</html>
