<%--
  Created by IntelliJ IDEA.
  User: kimseungwon
  Date: 2021/04/01
  Time: 4:37 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Title</title>
</head>
<body>
<%
   // post방식은 한글 인코딩 설정이 필요하다
   request.setCharacterEncoding("UTF-8");
%>
<h3>
   이름 : <%= request.getParameter("name") %><p/>
   나이 : <%= request.getParameter("age")  %><p/>
   취미 : <%
            String[] hobbys = request.getParameterValues("hobby");
            for(String h : hobbys) {
               out.println(h + ", ");
            }
         %><p/>
   접속자 IP : <%= request.getRemoteAddr() %><p/>
</h3>
</body>
</html>
