package ex0406.servlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet 작성법
 * 1) 반드시 public class
 * 2) HttpServlet 상속받는다.
 * 3) 필요한 메소드를 재정의한다.
 * <p>
 * 4) 반드시 생성과 등록이 필요하다.(방법이 2가지가 있다)
 * - web.xml 등록
 * - @annotation 등록
 */
public class LifeCycleServlet extends HttpServlet {   // HttpServlet는 GenericServlet을 상속받았다.

   public LifeCycleServlet() {
      System.out.println("LifeCycleServlet의 생성자 호출....");
   }

   @Override
   public void init() throws ServletException {
      System.out.println("LifeCycleServlet의 init() 호출....");
   }

   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.setContentType("text/html; charset=UTF-8");

      // session객체 - HttpSession
      HttpSession session = request.getSession();  // 세션구하기

      // application객체 - ServletContext
      ServletContext application = request.getServletContext();   // 어플리케이션 구하기

      // 브라우저에 출력하기 위해서 출력스트림을 구한다.
      PrintWriter out = response.getWriter();
      out.println("<h1> Hello ~ 안녕!!!</h1>");

      out.println("<script>");
      out.println("alert('오메 신기해라')");
      out.println("</script>");
   }

   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      System.out.println("LifeCycleServlet의 doPost 호출....");
   }

   @Override
   protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      System.out.println("LifeCycleServlet의 service 호출....");
   }

   @Override
   public void destroy() {
      System.out.println("LifeCycleServlet의 destroy 호출....");
   }


}
