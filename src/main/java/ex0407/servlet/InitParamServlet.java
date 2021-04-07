package ex0407.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class InitParamServlet extends HttpServlet {

   private String id, message;
   private String address, contextMessage;

   /**
    * init-param 정보를 받기위한 메소드
    */
//   @Override
//   public void init() throws ServletException {
//      id = super.getInitParameter("id");
//      message = getInitParameter("message");
//
//      System.out.println("id = " + id);
//      System.out.println("message = " + message);
//   }
   @Override
   public void init(ServletConfig config) throws ServletException {
      id = config.getInitParameter("id");
      message = config.getInitParameter("message");

      System.out.println("id = " + id);
      System.out.println("message = " + message);

      // ServletContext 영역에 전달된 init-param을 가져오기
      ServletContext application = config.getServletContext();
      address = application.getInitParameter("address");
      contextMessage = application.getInitParameter("message");

      System.out.println("address = " + address);
      System.out.println("contextMessage = " + contextMessage);

   }

   @Override
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // 기능구현
      // init-paramd을 받는다.
      response.setContentType("text/html; charset=UTF-8");

      PrintWriter out = response.getWriter();
      out.println("<h1> 아이디 : " + id + "<p>");
      out.println("메시지 : " + message + "<p>");
      out.println("주소 : " + address + "<p>");
      out.println("contextMessage : " + contextMessage + "</h1>");
   }
}
