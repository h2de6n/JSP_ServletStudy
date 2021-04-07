<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: kimseungwon
  Date: 2021/04/01
  Time: 4:54 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Title</title>
</head>
<body>

<h3>회원 정보</h3>
<%
   request.setCharacterEncoding("UTF-8"); // Filter 라는 개념으로 나중에 따로 뺀다.

   // 폼으로 전송된 모든 name의 정보를 찾기
   Enumeration<String> e = request.getParameterNames();
   while(e.hasMoreElements()) {  // 요소가 있는지 체크해준다. 있으면 true, 없으면 false
      String name = e.nextElement();
      String value = request.getParameter(name);
      out.println(name + " = " + value + "<br>");
   }
%>
</body>
</html>
