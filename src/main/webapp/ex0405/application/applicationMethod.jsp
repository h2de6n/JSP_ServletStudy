<%--
  Created by IntelliJ IDEA.
  User: kimseungwon
  Date: 2021/04/05
  Time: 3:32 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Title</title>
</head>
<body>
<h1> ServletContext - application 내장객체 </h1>
<h3>
   application.getContextPath() :   <%= application.getContextPath() %> <p>
   application.getRealPath() :      <%= application.getRealPath("/") %> <p>
   application.getMajorVersion() :  <%= application.getMajorVersion() %> <p>
   application.getMinorVersion() :  <%= application.getMinorVersion() %> <p>
   application.getServerInfo() :    <%= application.getServerInfo() %> <p>
   <hr>
   application에 정보 저장하기<p>

   <%
      application.setAttribute("addr", "경기도 오리역");
      application.setAttribute("message", "application영역 입니다.");
   %>

   application에 저장된 정보 조회하기<p>

   주소: <%= application.getAttribute("addr") %> <p/>
   메시지: <%= application.getAttribute("message")%> <p/>

   <hr>
   <a href="../session/sessionGet.jsp">이동하기 - 확인하러 가봅시다!</a>
</h3>
</body>
</html>
