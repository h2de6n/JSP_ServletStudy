<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: kimseungwon
  Date: 2021/04/05
  Time: 10:23 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Title</title>
</head>
<body>
<%
   String dbId = "jang", dbPwd = "1234";

   // 폼으로 전송된 데이터 받기
   request.setCharacterEncoding("UTF-8");
   String userId = request.getParameter("userId");
   String userPwd = request.getParameter("userPwd");
   String userName = request.getParameter("userName");

   // 전송된 id와 pwd를 비교하여 일치하면 LoginOk.jsp 이동하고 실패하면 LoginForm.html로 이동한다.
   // 이동할때 response, sendRedirect(String url) 방식으로 이동한다.
   if(dbId.equals(userId) && dbPwd.equals(userPwd)) {
      // 성공 - redirect방식: request, response가 새롭게 생성
      response.sendRedirect("LoginOk.jsp?userName=" + URLEncoder.encode(userName, "UTF-8"));
      // forward 방식으로 이동 : request, response가 유지된다.
//      RequestDispatcher rd = request.getRequestDispatcher("LoginOk.jsp");
//      rd.forward(request, response);
   } else {
      response.sendRedirect("LoginForm.html");
   }
%>

</body>
</html>
