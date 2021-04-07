package ex0406.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

public class LoginCheckServlet extends HttpServlet {

   String dbId="kim", dbPass="1234";
   // 필요한 메소드 재정의

   // get방식으로 요청이 들어올 때 호출
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      System.out.println("logincheck get call...");
      doPost(req, resp);
   }

   // post방식으로 요청이 들어올 때 호출
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      // 현재 문서의 형태와 인코딩 설정
      resp.setContentType("text/html; charset=UTF-8");
      System.out.println("logincheck post call...");

      // post 방식 일때 한글 인코딩 설정
      req.setCharacterEncoding("UTF-8");

      // 폼으로 전송된 데이터 받기
      String userId = req.getParameter("userId");
      String userPwd = req.getParameter("userPwd");
      String userName = req.getParameter("userName");

      PrintWriter out = resp.getWriter(); // 브라우저에 출력을 위한 출력 스트림
      out.println("아이디: " + userId + "<p>");
      out.println("비밀번호: " + userPwd + "<p>");
      out.println("이름: " + userName + "<p>");

      // 전송된 데이터를 인증절차를 밟고 맞으면 session 영역에 sessionId, sessionName, sessionTime을 저장한다.
      // LoginOk.jsp이동하고
      // 틀리면 메시지 출력하고 뒤로가기(history.back())

      if(dbId.equals(userId) && dbPass.equals(userPwd)) {
         HttpSession session = req.getSession();
         session.setAttribute("sessionId", userId);
         session.setAttribute("sessionName", userName);
         session.setAttribute("accessTime", new Date().toLocaleString());

         // 이동
         resp.sendRedirect("LoginOk.jsp");
      } else {
         out.println("<script>");
         out.println("alert('"+ userName +" 님 정보를 다시 확인하세요.')");
         out.println("history.back()");
         out.println("</script>");

      }
   }

//   @Override
//   protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//      System.out.println("logincheck service call...");
//   }
}
