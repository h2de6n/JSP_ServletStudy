<%--
  Created by IntelliJ IDEA.
  User: kimseungwon
  Date: 2021/04/06
  Time: 11:12 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Title</title>
</head>
<body>
<h2> 로그인하기 - 쿠키를 이용한 ID 기억시키기 </h2>
<%
   // 쿠키에 저장된 id가 있는지를 체크해서 있으면 id박스에 넣는다.
   String cookieId = "";
   Cookie[] co = request.getCookies();
   if (co != null) {
      for(Cookie c : co) {
         if (c.getName().equals("cookieId")) {
            cookieId = c.getValue();
            break;   // for문 빠져나가라.
         }
      }
   }

%>
<form method="post" action="LoginPro.jsp">
   ID : <input type="text" name="userId" value="<%= cookieId %>"/><br/>
   PWD : <input type="password" name="userPwd"/></br/>
   NAME : <input type="text" name="userName"/></br/>

   <input type="submit" value="로그인"/>
</form>
</body>
</html>
