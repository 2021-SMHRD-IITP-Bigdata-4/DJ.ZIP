package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Front.BoardUpdateService;
import Front.BoardWriteService;
import Front.JoinService;
import Front.LoginService;
import Front.LogoutService;
import Front.UpdateService;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String path = request.getContextPath();
		String reqURI = request.getRequestURI();
		String resultURI = reqURI.substring(path.length() + 1);
//		System.out.println(resultURI + reqURI);

		Command com = null;

		if (resultURI.equals("JoinService.do")) {

			com = new JoinService();

		} else if (resultURI.equals("LoginService.do")) {

			com = new LoginService();

		} else if (resultURI.equals("LogoutService.do")) {

			com = new LogoutService();

		} else if (resultURI.equals("UpdateService.do")) {

			com = new UpdateService();

		} else if (resultURI.equals("BoardWriteService.do")) {

			com = new BoardWriteService();

		} else if (resultURI.equals("BoardUpdateService.do")) {

			com = new BoardUpdateService();

		} else if (resultURI.equals("BoardDeleteService.do")) {

			com = new BoardUpdateService();

		} else if (resultURI.equals("Board_replyWriteDeleteService.do")) {

			com = new BoardUpdateService();
			
		} else if (resultURI.equals("Board_replyUpdateService.do")) {

			com = new BoardUpdateService();

		} else if (resultURI.equals("Board_replyDeleteService.do")) {

			com = new BoardUpdateService();
		
		} else if (resultURI.equals("BoardDeleteService.do")) {

			com = new BoardUpdateService();

		}
				com.execute(request, response);
	}

}
