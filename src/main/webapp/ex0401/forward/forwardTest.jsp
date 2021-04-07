<%--
  Created by IntelliJ IDEA.
  User: kimseungwon
  Date: 2021/04/01
  Time: 11:19 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Title</title>
</head>
<body>
<h1>액션태그 - forward TEST</h1>
<%
   for(int i=0; i<=10; i++) {
      out.println(i + "<br>");
   }
%>
<!--
   액션태그 forward는 태그를 만나는 순간 페이지를 포워딩 한다.(페이지가 다른 페이지로 변경된다)
      : 뒤로가기 없다(현재페이지가 갱신)
      : 이것은 현재 request, response가 유지된다는 개념
-->
<jsp:forward page="forwardResult.jsp"></jsp:forward>
<%--<a href="forwardResult.jsp">이동</a>--%>
</body>
</html>
