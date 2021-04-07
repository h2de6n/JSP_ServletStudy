<%--
  Created by IntelliJ IDEA.
  User: kimseungwon
  Date: 2021/04/06
  Time: 10:49 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Title</title>
</head>
<body>
<h1> cookie - 사용자의 정보를 클라이언트쪽에 저장하는 기술</h1>
<%
   // 쿠키생성
   Cookie co1 = new Cookie("id", "jang");
   Cookie co2 = new Cookie("age", "20");

   // 옵션 설정
   co1.setMaxAge(60*60*24);         // 1일 (-1은 저장이 안됨, 0이면 삭제)
   co1.setMaxAge(60*60*24*365);     // 365일

   co1.setPath("/");  // 쿠키를 사용할 수 있는 경로를 설정
   // 쿠키를 저장
   response.addCookie(co1);
   response.addCookie(co2);
%>

<h3> 저장완료!!!</h3>
<a href="cookieGet.jsp">쿠키확인하러 가자.</a>
</body>
</html>
