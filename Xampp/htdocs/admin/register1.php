<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <title>Registation</title>
</head>
<style>

</style>
<body>
    <div>
    <?php
 
 $conn = new mysqli('localhost','root','','useraccounts');
  if(!$conn){
 die('Failed to connect to DB');
  };
  if(isset($_POST['create'])){
    //mysqli_real_escape_string : chống các lệnh như select * from user,...
    $username = mysqli_real_escape_string($conn,$_POST['username']);
    $email = mysqli_real_escape_string($conn,$_POST['email']);
    $password = mysqli_real_escape_string($conn,$_POST['password']);
    $password = password_hash($password,PASSWORD_BCRYPT);
    
    $sql ="INSERT INTO users (username,email,password) VALUES('$username','$email','$password')";
    $result =mysqli_query($conn,$sql);
    if($result == 1){
        echo 'Successfully saved';
    }else{
        echo 'There were error while saving data';
    }
    }
 ?>
    </div>
    <div>
        <form action="register1.php" method="post">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                    <h1>Registation</h1>
                    <hr class="mb-3">
                    <label for="username"><b>Username</b></label>
                    <input class="form-control" type="text" name="username" required>
                    <label for="email"><b>Email</b></label>
                    <input class="form-control" type="email" name="email" required>
                    <label for="password"><b>Password</b></label>
                    <input class="form-control" type="password" name="password" required>
                    <hr class="mb-3">
                    <input class="btn btn-primary" type="submit" name="create" value="Sign up">
                    <p>Already a member?<a href="login.php">Log in</a></p>
                </div>    
                </div>
            </div>
        </form>
    </div>
</body>
</html>
