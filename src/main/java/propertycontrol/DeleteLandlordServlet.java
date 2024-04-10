package propertycontrol;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteLandlordServlet")
public class DeleteLandlordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id = request.getParameter("lanid");
		boolean isTrue;
		
		isTrue = LandlordDBUtil.deletelandlord(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("LandlordInsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<Landlord> lanDetails = LandlordDBUtil.getLandlordDetails(id);
			request.setAttribute("lanDetails", lanDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Landlordprofile.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
