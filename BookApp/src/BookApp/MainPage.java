


package BookApp;
import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns= {"/MainPage"})
public class MainPage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		

		PrintWriter writer = response.getWriter();

		String id = request.getParameter("id");

			if (id.equals("1")) {
				HttpSession book1 = request.getSession(true);
				book1.setAttribute("book1",id);
				response.sendRedirect("/BookApp/sepeteEkle.jsp");
			} else if (id.equals("2")) {
				HttpSession book2 = request.getSession(true);
				book2.setAttribute("book2",id);
				response.sendRedirect("/BookApp/sepeteEkle.jsp");
			} else if (id.equals("3")) {
				HttpSession book3 = request.getSession(true);
				book3.setAttribute("book3",id);
				response.sendRedirect("/BookApp/sepeteEkle.jsp");
			} else if (id.equals("4")) {
				HttpSession book4 = request.getSession(true);
				book4.setAttribute("book4",id);
				response.sendRedirect("/BookApp/sepeteEkle.jsp");
			}
	}

}
