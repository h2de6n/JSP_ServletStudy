<%--
  Created by IntelliJ IDEA.
  User: kimseungwon
  Date: 2021/04/06
  Time: 12:15 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isErrorPage="true" %>
<%
   // 응답쪽으로 상태코드를 200으로 설정해서 보낸다.
   response.setStatus(200);
%>
<html>
<head>
   <title>Title</title>
</head>
<body>

<h1>예외가 발생했어요^^</h1>
<!-- exception 내장객체를 사용하려면 문서 첫줄에 isErrorPage="true"를 해야한다. -->
exception : <%= exception %> </p>
exception : <%= exception.getMessage() %> </p>
exception : <%= exception.getClass() %> </p>

<a href="exceptionForm.jsp"> 폼으로 이동하기 </a>

</body>
</html>
