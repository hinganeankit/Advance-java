package p1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SecondServlet")
public class SecondServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public SecondServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		

		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();


		Cookie[] ck=request.getCookies();
	
		pw.print("<hr>");
		 for (int i = 0; i < ck.length; i++) {
			 pw.print("Name:  "+ck[i].getName() +"<br>");
			 pw.print("Value :"+ck[i].getValue());
		}
		
			pw.print("<hr>");
		

	}

}
