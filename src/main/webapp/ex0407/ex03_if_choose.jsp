<%--
  Created by IntelliJ IDEA.
  User: kimseungwon
  Date: 2021/04/07
  Time: 5:47 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Title</title>
</head>
<body>
<h1>JSTL - &lt;c:if> or &lt;c:choose></h1>

<h3>
   <c:if test="${not empty param.age}" var="result" scope="session">
      <h1 style="color: red">당신의 나이는 ${param.age}살 입니다.</h1>
   </c:if>

   결과: ${result}
   <hr>


   <!-- age의 값이 18보다 크면 성인입니다, 작으면 살은 미성년자이므로 서비스가 제한됩니다. -->
   <c:if test="${result}">
      <c:chooese>
         <c:when test="${param.age}18">
            <h3>${param.age}살은 성인입니다.^^</h3>
         </c:when>
         <c:otherwise>
            <h3>${param.age}살은 미성년자이므로 서비스가 제한됩니다.</h3>
         </c:otherwise>
      </c:chooese>
   </c:if>


   <hr>
   <form action="ex03_if_choose.jsp" method="get">
      이름: <input type="text" name="name" /> <p>
      선택:
      <select name="job">
         <option value="0">--선택--</option>
         <option value="학생">학생</option>
         <option value="개발자">개발자</option>
         <option value="백수">백수</option>
         <option value="백조">백조</option>
      </select> <p>
      <input type="submit" value="전송"/>
   </form>

   <!--
      1. 만약 name과 job이 전송된다면 "~님 직업은 ~입니다." 출력한다.

      2. job의 종료에 따른 메시지를 출력한다.
            학생이라면 "공부하세요"
            개발자라면 "최고의 개발자입니다"
            백수라면 "노세 노세 젊어서 노세.."
            백조라면 "나도 백조이고 싶다.."
            0이면 선택사항없음 출력한다.

      3. 값이 전송되었을 때 긱폼에 선택된 내용이 그대로 보이기 - javascript를 이용하면 편하다.
   -->
</h3>

</body>
</html>
