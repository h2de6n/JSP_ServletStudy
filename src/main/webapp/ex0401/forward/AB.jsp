<%--
  Created by IntelliJ IDEA.
  User: kimseungwon
  Date: 2021/04/01
  Time: 12:00 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Title</title>
</head>
<body>
<h1>AB.jsp 문서</h1>
<%= request.getParameter("name")%>님 혈액형 <%= request.getParameter("blood")%>이고
성격은 소심하고 성격 더럽다.
</body>
</html>
