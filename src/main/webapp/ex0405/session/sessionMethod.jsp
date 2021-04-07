<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    //세션의 유효시간을 변경한다.
    session.setMaxInactiveInterval(30);//30초
 %>
<h3> HttpSession - session <p>
  
 session.getId()  :  <%=session.getId() %> <p>
 session.isNew()  :  <%=session.isNew() %> <p>
 session.getMaxInactiveInterval()  :  <%=session.getMaxInactiveInterval() %> <p>
 session.getCreationTime()  :  <%=session.getCreationTime() %> <p>
 session.getLastAccessedTime()  :  <%=session.getLastAccessedTime() %> <p>
 
 <hr>
 
  session에 정보 저장하기 <p>
  <%
     session.setAttribute("id", "jang");
     session.setAttribute("message", "배고프다..");
     session.setAttribute("hobbys", new String[]{"등산","취미","낚시","골프"});
  
  %>
  
  session에 저장된 정보  확인하기 <p>
  아이디 : <%=session.getAttribute("id") %><br>
  메시지 :<%=session.getAttribute("message") %><br>
  취미 : <%=session.getAttribute("hobbys") %><br>
  이름 : <%=session.getAttribute("name") %><p>
 
  <a href="sessionGet.jsp">이동하기</a>

 </h3>




</body>
</html>