package Front;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import Controller.Command;
import model.member_DAO;
import model.member_DTO;

public class JoinService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick_name = request.getParameter("nick_name");
		String email = request.getParameter("email");
		String dj_career = request.getParameter("dj_career");
		String tel = request.getParameter("tel");
		String file_name = request.getParameter("imgfile");
		
		System.out.println(id);
		System.out.println(pw);
		System.out.println(nick_name);
		System.out.println(email);
		System.out.println(dj_career);
		System.out.println(tel);
		System.out.println(file_name);
		
		
		member_DTO dto = new member_DTO(id, pw, nick_name, email, dj_career, tel, file_name);
		member_DAO dao = new member_DAO();
		int cnt = dao.join(dto);
		
		HttpSession session = request.getSession();
		if(cnt > 0) {
			System.out.println("회원가입성공!");
			session.setAttribute("info", dto);
			response.sendRedirect("Home.jsp");
		}else {
			System.out.println("회원가입실패!");
			session.setAttribute("info", dto);
			response.sendRedirect("JoinFail.jsp");
		}
		
		
	}

}
