package ex0407.servlet;

import javax.servlet.*;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 생성
 * 매핑
 */

//@WebServlet("/test") // 기본 생성의 이름 initTestServlet (첫글자만 소문자로 클래스명을 딴다.) -> <url-pattern> /test </url-pattern>
//@WebServlet(urlPatterns = "/test");
@WebServlet(
      urlPatterns = "/initTest",
      initParams = {
            @WebInitParam(name = "age", value = "20"),
      },
      loadOnStartup = 1
)
public class InitTestServlet extends HttpServlet {

   String address, contextMessage;
   String age, id;

   @Override
   public void init(ServletConfig config) throws ServletException {
      // servlet의 init-param 가져오기
      age = config.getInitParameter("age");
      id = config.getInitParameter("id");

      // context init-param 가져오기
      ServletContext application = config.getServletContext();
      address = application.getInitParameter("address");
      contextMessage = application.getInitParameter("message");
   }


   @Override
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      System.out.println("InitTestServlet의 service 호출됨....");

      // 기능구현
      // init-paramd을 받는다.
      response.setContentType("text/html; charset=UTF-8");

      PrintWriter out = response.getWriter();
      out.println("<h1> 나이 : " + age + "<p>");
      out.println("<h1> 아이디 : " + id + "<p>");
      out.println("주소 : " + address + "<p>");
      out.println("contextMessage : " + contextMessage + "</h1>");
   }

}
