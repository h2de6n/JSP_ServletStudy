<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: kimseungwon
  Date: 2021/04/05
  Time: 5:15 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Title</title>
</head>
<body>

<h3> SAVE 폴더 LIST </h3>
<%
   // save폴더에 저장된 모든 파일이름의 정보를 가져와서 ul태그로 출력한다.
   String realPath = (String)application.getAttribute("realPath");

   out.println("<h4>" + realPath + "</h4>");

   File path = new File(realPath);
   String[] fileList = path.list();

   out.println("<ul>");
   if(fileList != null) {
      for(String f : fileList) {
         out.println("<li>" + f + "</li>");
      }
   }
%>

</body>
</html>
