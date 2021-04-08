package ex0408.filter;

import javax.servlet.*;
import java.io.IOException;

public class SampleFilter implements Filter {
   @Override
   public void init(FilterConfig filterConfig) throws ServletException {
      Filter.super.init(filterConfig);
   }

   @Override
   public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

   }
}
