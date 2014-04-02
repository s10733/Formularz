package serv;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Status
 */
@WebServlet(urlPatterns = "/status")
public class Status extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Status() {
        super();
      
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<p> WELCOME ON MY PAGE !!!</p>");
		out.println("<p> Now is: "+ new java.util.Date() +"</p>");
		GregorianCalendar koniecRoku = new GregorianCalendar(2014,11,31);
		Calendar dzisiaj = new GregorianCalendar();
		out.println("Do konca roku pozostalo "+(koniecRoku.get(Calendar.DATE) - dzisiaj.get(Calendar.DATE))+" dni oraz "+(koniecRoku.get(Calendar.MONTH) - dzisiaj.get(Calendar.MONTH)-1)+" miesiecy");
		out.println("<p><a href='main.jsp'><button>WROC</button> </a></p>");
		out.println("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
