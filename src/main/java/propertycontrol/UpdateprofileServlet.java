package propertycontrol;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateprofileServlet")
public class UpdateprofileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
        
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("lanid");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("usern");
		String password = request.getParameter("pass");
		String photo = request.getParameter("pic");
		
		boolean isTrue;
		
		isTrue = LandlordDBUtil.Updateprofile(id , name, email ,phone , username ,password,photo);
		
		if(isTrue == true)
		{
			List<Landlord> LanDetails = LandlordDBUtil.getLandlordDetails(id);
			request.setAttribute("LanDetails", LanDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Landlordprofile.jsp");
            dis.forward(request, response);		
		}
		else {
			List<Landlord> LanDetails = LandlordDBUtil.getLandlordDetails(id);
			request.setAttribute("LanDetails", LanDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Landlordprofile.jsp");
			dis.forward(request,response);
		}
		
	}

}
