<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: kimseungwon
  Date: 2021/04/01
  Time: 5:06 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Title</title>
</head>
<body>
<h3> request 관련 메소드 </h3>
<%
   Enumeration<String> e = request.getHeaderNames();
   while(e.hasMoreElements()) {
      String name = e.nextElement();
      String value = request.getHeader(name);

      out.println(name + " = " + value + "<br>");
   }
%>

<hr>
<h3>
   request.getContextPath() = <%= request.getContextPath() %> <p/>
   request.getRealPath("/") = <%= request.getRealPath("/") %>, <%= application.getRealPath("/")%> <p/>
   request.getRequestURL()  = <%= request.getRequestURL() %> <p/>
</h3>
</body>
</html>
