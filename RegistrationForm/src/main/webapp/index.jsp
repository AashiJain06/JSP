<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body>
    <center>
      <h1>Welcome! to Registration page</h1>
      <hr />
      <form action = "register" method ="post">
        <label for="username">Username :</label>
        <br />
        <input type="text" name="uname" />
        <br />
        <br />
        <label for="email">Email:</label>
        <br />
        <input type="email" name="email" />
        <br />
        <br />
        <label for="password">Password :</label>
        <br />
        <input type="password" name="pass" />
        <br />
        <br />
        <label for="Gender">Gender</label>
        <select name="Gender">
          <option value="Male">Male</option>
          <option value="Female">Female</option>
          <option value="Other">other</option>
        </select>
        <br />
        <br />
        <input type="submit" value="sign in" />
      </form>
    </center>
  
</body>
</html>