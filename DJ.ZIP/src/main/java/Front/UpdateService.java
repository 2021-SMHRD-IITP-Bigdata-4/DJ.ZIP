package Front;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.Command;
import model.member_DAO;
import model.member_DTO;

public class UpdateService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		member_DTO info = (member_DTO)session.getAttribute("info");
		
		request.setCharacterEncoding("EUC-KR");
		String email = info.getEmail();
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String addr = request.getParameter("addr");
		
		member_DTO dto = new member_DTO(addr, pw, addr, email, pw, tel, addr);
		member_DAO dao = new member_DAO();
		int cnt = dao.update(dto);
		
		if(cnt>0) {
			System.out.println("업데이트 성공!");
			session.setAttribute("info", dto);
		}else {
			System.out.println("업데이트 실패!");
		}
		
		response.sendRedirect("Home.jsp");
		
	}

}
