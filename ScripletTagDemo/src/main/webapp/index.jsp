<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--declaration tag-->
<h3>Declaration tag example</h3>
<%!
   int a=10;
   String name = "Aashi";
   int square() 
   {
	   return a*a;
   }
%>
<h3>Scriplet tag Example</h3>
<!--Scriplet tag-->
<%
   out.println("Name"+name+"<br/>");
   out.println("a:"+a+"<br/>");
   out.println(square());
   int b=20;
   if(b>100)
   {
	   out.println("b is smaller than 100");
   }
   for(int i=0; i<2;i++)
   {
	   out.println("hello "+"<br/>");
   }
%>
<!-- Expression tag -->
<%="Expression tag Example" %>
<br/>
<%=name %>
</body>
</html>