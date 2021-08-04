package Front;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.Command;
import model.member_DAO;
import model.member_DTO;

public class LoginService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		member_DTO dto = new member_DTO(id, pw);
		member_DAO dao = new member_DAO();
		member_DTO loginDto = dao.login(dto);
		
		if (loginDto != null) {
			System.out.print("로그인 성공!");
			HttpSession session = request.getSession();
			session.setAttribute("info", loginDto);
		} else {
			System.out.print("로그인 실패ㅜㅜ");
		}
		response.sendRedirect("Home.jsp");
	}

}