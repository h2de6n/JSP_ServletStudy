<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>session의 정보가져오기 </h2>
<h3>
  session에 저장된 정보  확인하기 <p>
  아이디 : <%=session.getAttribute("id") %><br>
  메시지 :<%=session.getAttribute("message") %><br>
  취미 : <%=session.getAttribute("hobbys") %><br>
  이름 : <%=session.getAttribute("name") %><p>


  application에 저장된 정보 조회하기<p>

  주소: <%= application.getAttribute("addr") %> <p/>
  메시지: <%= application.getAttribute("message")%> <p/>

</h3>

</body>
</html>