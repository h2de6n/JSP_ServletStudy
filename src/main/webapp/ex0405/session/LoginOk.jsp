<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>

<%
    response.setHeader("Cache-Control","no-store");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
  $(function(){
	 // alert(1)
	  $("a[href='#']").click(function(){
		  if( confirm("정말 로그아웃 하실래요??") ){
		      location.href="logout.jsp";
	      }
	  });
  })

</script>
</head>
<body>

<%
   //인증여부를 체크하고 인증 없으면 폼으로 이동시킨다.
   if(session.getAttribute("sessionId") == null){
	   out.println("<script>");
	   out.println("alert('인증하고 이용해주세요.')");
	   out.println("location.href='LoginForm.html'");
	   out.println("</script>");
   }else{
	  %>
	   <h3>
	   <%=session.getAttribute("sessionName") %>님 로그인 [접속시간 : <%=session.getAttribute("accessTime") %>] <p>
	   <img alt="이미지입니다." src="images/monkey.gif"> <P>
	   <a href="#" >로그아웃 </a>
	   </h3>
	  
	  <% 
   }

%>


</body>
</html>