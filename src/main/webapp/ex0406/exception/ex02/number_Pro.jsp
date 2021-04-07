<%--
  Created by IntelliJ IDEA.
  User: kimseungwon
  Date: 2021/04/06
  Time: 12:40 오후
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
   int num2 = Integer.parseInt(request.getParameter("num2"));
%>

<h1><%= num1 %> + <%= num2 %> = <%= num1 + num2 %></h1>
</body>
</html>
