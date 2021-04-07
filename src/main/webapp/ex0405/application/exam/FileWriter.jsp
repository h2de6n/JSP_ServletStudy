<%@ page import="java.io.FileWriter" %>
<%@ page import="java.io.BufferedWriter" %><%--
  Created by IntelliJ IDEA.
  User: kimseungwon
  Date: 2021/04/05
  Time: 5:09 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Title</title>
</head>
<body>
<!--
    작성자이름_시간.txt 으로 저장
    파일 경로
    파일 리스트
    새글 등록
    IO 이용해서 파일 생성
    alert로 생성되었습니다
    FileReader.jsp로 이동하여 찍어냄
    내용은 작성 제목 내용
-->
<%
   // 넘어오는 3개의 값 받는다.
   request.setCharacterEncoding("UTF-8");

   String name = request.getParameter("name");
   String subject = request.getParameter("subject");
   String content = request.getParameter("content");

   String realPath = application.getRealPath("/application/exam/save");

   long time = System.currentTimeMillis();   // 현재시간을 초로 만들어준다.
   String path = realPath + "/" + name + "_" + time + ".txt";

   BufferedWriter bw = new BufferedWriter(new FileWriter(path));

   // 쓰기 = 내용 저장
   bw.write("이름 : " + name + "\n");
   bw.write("제목 : " + subject + "\n");
   bw.write("내용 : " + content + "\n");

   bw.flush();
   bw.close();

   application.setAttribute("realPath", realPath);

   out.println("<script>");
   out.println("alert('파일이 생성되었습니다.')");
   out.println("location.href='FileResult.jsp'");
   out.println("</script>");
%>
</body>
</html>
