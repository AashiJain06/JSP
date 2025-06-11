<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>Welcome ! To JSP Calculator</h1>
   
      <form method="post">
      Enter first number :
     
     
      <input type="text" name="n1" placeholder="enter number" required>
      <br>
      <br>
      Enter second number :
      <input type="text" name = "n2" placeholder="enter number" required>
      <br>
      <br> 
      Select operation :
      <select name="op" required>
      <option value="select">select</option> 
      <option value="+">+</option>
      <option value="-">-</option>
      <option value="*">*</option>
      <option value="/">/</option>
      </select>
      <br>
      <br>
      <input type="submit" value="result" name="submit">
      <br>
      <br>
      <hr>
      </form>
   <center/>
   <%
   try
   {
	  if(request.getParameter("n1")!=null)
	  {
		  int a,b;
		  String c;
		  a=Integer.parseInt(request.getParameter("n1"));
		  b=Integer.parseInt(request.getParameter("n2"));
		  c = request.getParameter("op");
		  if(c.equals("+"))
		  {
			  out.println("Result : " +(a+b));
		  }
		  else if(c.equals("-"))
				  {
			  out.println("Result : "+(a-b));
			  
				  }
		  else if(c.equals("*"))
		  {
			  out.println("Result : "+(a*b));
		  }
		  else
		  {
			  out.println("Result : "+(a/b));
		  }
		  
		  
	  }
   }
	  catch(Exception e)
	  {
		  out.println(e);
	  }
   
   %>
</body>
</html>

</body>
</html>