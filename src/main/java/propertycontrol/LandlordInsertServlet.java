package propertycontrol;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LandlordInsertServlet")
public class LandlordInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("lanid");
		String name =request.getParameter("name");
		String email =request.getParameter("email");
		String phone =request.getParameter("phone");
		String username = request.getParameter("uid");
		String password = request.getParameter("psw");
		String photo = request.getParameter("doc");
		
		boolean isTrue;
		
		// Attempt to insert landlord details into the database
		isTrue = LandlordDBUtil.Insertlandlord1(name , email ,phone ,username ,password ,photo);
		
		// If insertion is successful
		if(isTrue == true) {
			// Forward to the login page
			RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
			dis.forward(request, response);
		}
		else {
			
			// If insertion fails, forward to the unsuccessful page
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
			
	}

}
