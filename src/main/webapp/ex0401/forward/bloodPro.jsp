<%--
  Created by IntelliJ IDEA.
  User: kimseungwon
  Date: 2021/04/01
  Time: 11:56 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Title</title>
</head>
<body>
<%
   // post방식인 경우에 한글 인코딩 처리 필요
   request.setCharacterEncoding("UTF-8");
   // 전송된 parameter 정보 받기
   String name = request.getParameter("name");
   String blood = request.getParameter("blood");

   out.println(name + "<br>");
   out.println(blood + "<br>");
%>

<jsp:forward page='<%= blood + ".jsp" %>'/>
</body>
</html>
