<!DOCTYPE html>
<html>
<head>
<title>Login Form</title>
<style>
body {
  font-family: Arial, sans-serif;
}

.container {
  width: 400px;
  margin: 0 auto;
}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  background-color: #45a049;
}

.forgot-password {
  text-align: right;
}
</style>
</head>
<body>
<div class="container">
  <h1>Login</h1>
  <form action="login.php" method="post">
    <input type="text" name="username" placeholder="Username">
    <input type="password" name="password" placeholder="Password">
    <button type="submit">Login</button>
    <a href="#">Forgot password?</a>
  </form>
</div>
</body>
</html>
