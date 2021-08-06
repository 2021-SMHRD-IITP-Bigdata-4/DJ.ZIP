package Front;

import java.io.IOException;
import java.net.URLEncoder;

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
			System.out.print("�α��� ����!");
			HttpSession session = request.getSession();
			session.setAttribute("info", loginDto);
			response.sendRedirect("Home.jsp?nick_name=" + URLEncoder.encode(loginDto.getNick_name(), "EUC-KR"));
		} else {
			System.out.print("�α��� ���Ф̤�");
			response.sendRedirect("LoginFail.jsp");
		}
	}

}