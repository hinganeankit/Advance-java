package p1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/FristServlet")
public class FristServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public FristServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	response.setContentType("text/html");
		
	response.setContentType("text/html");
	
	PrintWriter  pw=response.getWriter();
	
	
	String name=request.getParameter("uname");
	
	pw.print(" --->   "+name);
	

	 RequestDispatcher rd=request.getRequestDispatcher("SecondServlet");
	
	 rd.forward(request, response);
	
	

		

	}

}
