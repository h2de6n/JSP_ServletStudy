<%@page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>Insert title here</title>
</head>
<body>
<%

   String dbId = "jang", dbPwd = "1234";


   //폼으로 전송된 데이터 받기
   request.setCharacterEncoding("UTF-8");

   String userId = request.getParameter("userId");
   String userPwd = request.getParameter("userPwd");
   String userName = request.getParameter("userName");

   if (dbId.equals(userId) && dbPwd.equals(userPwd)) {
      //세션에 정보를 저장한다(아이디, 이름, 접속시간)
      session.setAttribute("sessionId", userId);
      session.setAttribute("sessionName", userName);
      session.setAttribute("accessTime", new Date().toLocaleString()); // new Date(session.getCreationTime()).toLocaleString()

      //이동
      response.sendRedirect("LoginOk.jsp");
   } else {
      //메시지 출력
%>
<script type="text/javascript">
    alert("<%=userName%>님 아이디와 비번을 확인해주세요.");
    history.back();//뒤로가기
</script>
<%
   }

%>
</body>
</html>