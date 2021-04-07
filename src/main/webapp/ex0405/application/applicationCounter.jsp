<%@ page import="java.util.concurrent.atomic.AtomicInteger" %><%--
  Created by IntelliJ IDEA.
  User: kimseungwon
  Date: 2021/04/05
  Time: 4:02 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Title</title>
</head>
<body>
<%--<%--%>

<%--   // 1. 기존에 count 값을 조회한다. -> application.getAttribute("count")--%>
<%--   Object obj = application.getAttribute("count");--%>
<%--   // 2. 만약 1의 값이 없다면 초기값을 0으로 설정--%>
<%--   if (obj == null) {--%>
<%--      application.setAttribute("count", 0);--%>
<%--      obj = application.getAttribute("count");--%>
<%--   }--%>
<%--   // 3. count의 값을 증가 시킨다.--%>
<%--   int count = (int) obj;--%>
<%--   if (session.isNew()) {--%>
<%--      count++;--%>
<%--      // 4. 다시 저장한다.--%>
<%--      application.setAttribute("count", count);--%>
<%--   }--%>
<%--   // 5. 출력한다.--%>
<%--%>--%>
<%
   // 1. 기존에 count 값을 조회한다. -> application.getAttribute("count")
   Object obj = application.getAttribute("count");

   if (obj == null) {
      application.setAttribute("count", new AtomicInteger());
      obj = application.getAttribute("count");
   }

   // 3. count의 값을 증가 시킨다.
   AtomicInteger at = (AtomicInteger) obj;
   int count = at.intValue();

   if (session.isNew()) {
      count = at.incrementAndGet();   // 증가하고 인트값을 얻어올 수 있다.
   }

%>
<h3>방문자 수: <%= count %>명</h3>
</body>
</html>
