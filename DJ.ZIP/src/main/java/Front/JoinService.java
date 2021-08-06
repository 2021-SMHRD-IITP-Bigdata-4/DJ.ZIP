package Front;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.Command;
import model.member_DAO;
import model.member_DTO;

public class JoinService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("ID");
		String pw = request.getParameter("PW");
		String nick_name = request.getParameter("nick_name");
		String email = request.getParameter("email");
		String dj_career = request.getParameter("dj_career");
		String tel = request.getParameter("tel");
		String file_name = request.getParameter("file_name");
		
		member_DTO dto = new member_DTO(id, pw, nick_name, email, dj_career, tel, file_name);
		member_DAO dao = new member_DAO();
		int cnt = dao.join(dto);
		
		if(cnt > 0) {
			System.out.println("ȸ�����Լ���!");
			HttpSession session = request.getSession();
			session.setAttribute("nick_name", nick_name);
			response.sendRedirect("Home.jsp");
		}else {
			System.out.println("ȸ�����Խ���!");
			response.sendRedirect("Home.jsp");
		}
		
	}

}
