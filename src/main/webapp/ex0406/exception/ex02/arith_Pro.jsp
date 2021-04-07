<%--
  Created by IntelliJ IDEA.
  User: kimseungwon
  Date: 2021/04/06
  Time: 12:41 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Title</title>
</head>
<body>
<%
   int num1 = Integer.parseInt(request.getParameter("num1"));
   int result = 100 / num1;

   out.println("<h1> 100을 " + num1 + "로 나눈 결과는 " + result + "</h1>");
%>
</body>
</html>
