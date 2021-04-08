<%--
  Created by IntelliJ IDEA.
  User: kimseungwon
  Date: 2021/04/08
  Time: 11:03 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
   <title>Title</title>
   <style>
      table {
         width: 500px;
         border: solid gray 1px;
         border-collapse: collapse;
      }

      th, td {
         border: 1px gray solid;
         padding: 3px;
         text-align: center;
      }

      /*tr:eq(0) {*/
      /*   background-color: skyblue;*/
      /*}*/
   </style>
   <script src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
   <script>
       $(function () {
           $("tr:odd").css("background-color", "orange");
           $("tr:even").css("background-color", "gray");
           $("tr:eq(0)").css("background-color", "skyblue");
       });
   </script>
</head>
<body>
<h1> JSTL - forEach TEST </h1>
<c:forEach var="i" begin="0" end="10" step="2">
   ${i},
</c:forEach>

<hr>
<%
   String hobbys[] = {"등산", "수영", "골프", "낚시"};
//   request.setAttribute("hobbys", hobbys);
%>
${hobbys} / <%=hobbys%> --> scope영역에 저장되어 있어야 사용가능하다. scope이란? session 이라던가 application 영역을 말한다. <br>

<c:forEach items="<%= hobbys %>" var="h" varStatus="state">
   ${h}, ${state.index}, ${state.count}<br>
</c:forEach>

<hr>
<h3>Bean을 이용한 forEach</h3>
<!-- 객체 생성 -->
<jsp:useBean id="bean" class="ex0408.jstl.ForEachBean"/>

\${bean} = ${bean} <br>
\${bean.names} = ${bean.names} <br> <!-- bean.getNames()를 호출하는 것과 동일하다. -->
\${bean.menus} = ${bean.menus} <br>
\${bean.memberList} = ${bean.memberList} <br>
\${bean.map} = ${bean.map} <br>

<hr color="red"/>

<!-- 1. names는 select박스에 출력하기 -->
<select>
   <option value="0">-- 이름선택 --</option>
   <c:forEach items="${bean.names}" var="names">
      <option value="${names}">${names}</option>
      <br>
   </c:forEach>
</select>
<hr color="red"/>

<!-- menus는 checkbox에 출력하기 -->
<c:forEach items="${bean.menus}" var="menu" varStatus="state">
   <input type="checkbox" name="menu" value="${state.count}">${menu}
</c:forEach>
<hr color="red"/>

<!-- memberList는 테이블에 출력하기 -->
<table>
   <tr>
      <th>번호</th>
      <th>아이디</th>
      <th>이름</th>
      <th>나이</th>
      <th>주소</th>
   </tr>
   <c:forEach items="${bean.memberList}" var="member" varStatus="state">
      <tr>
         <td>${state.count} </td>
         <td>${member.id} </td> <!-- memeber.getId() 호출 -->
         <td>${member.name} </td>
         <td>${member.age} </td>
         <td>${member.addr} </td>
      </tr>
   </c:forEach>
</table>
<hr color="red"/>

<!-- map은 radio 출력하기 -->
<c:forEach items="${bean.map}" var="m">
   ${m}/ ${m.key} ${m.value} <br>
</c:forEach>
<hr color="red"/>

<fieldset>
   <legend>나라선택</legend>
   <c:forEach items="${bean.map}" var="m">
      <input type="radio" name="nation" value="${m.key}">${m.value}
   </c:forEach>
</fieldset>
<hr color="red"/>
가격 : 250420000원
<fmt:formatNumber value="250420000"/>원
</body>
</html>
