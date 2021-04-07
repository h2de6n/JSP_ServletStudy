<%--
  Created by IntelliJ IDEA.
  User: kimseungwon
  Date: 2021/04/06
  Time: 10:56 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Title</title>
</head>
<body>
<h2> 저장된 쿠키 가져오기</h2>
<%
   Cookie cookies[] = request.getCookies();  // cookies.length가 0일때가 있어서 무조건 반복문을 돌리면 안된다.
   if (cookies != null) {
      out.println("쿠키의 개수: " + cookies.length);

      for(Cookie co : cookies) {
         out.println(co.getName() + " = " + co.getValue() + "<br>");
      }
   } else {
      out.println("Cookie 정보가 없습니다.");
   }

%>
</body>
</html>
