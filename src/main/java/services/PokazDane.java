package services;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.DaneUsera;
import services.DodanieDanych;

/**
 * Servlet implementation class PokazDane
 */
@WebServlet(urlPatterns = "/PokazDane")
public class PokazDane extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PokazDane() {
        super();
      
    }
 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		
		
		 PrintWriter out = response.getWriter();
			
			String sellectKto = "";
			
		
			for (String kto : request.getParameterValues("kto")) {
				sellectKto += kto  + " ";
			}
			out.println("<html><body><h2>Dane Klienta:</h2>" +
					"<p>Imie: " + request.getParameter("kto") + "<br />" +
					"<p>Nazwisko: " + request.getParameter("nazwisko") + "<br />" +
					"</body></html>");
			out.close();
		}
	 
	 

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
