package Front;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Command;
import model.board_DAO;
import model.board_DTO;

public class BoardUpdateService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		String num = request.getParameter("num");
		String title = request.getParameter("name");
		String category = request.getParameter("select");
		String content = request.getParameter("message");
		String id = request.getParameter("id");

		System.out.println(num);
		System.out.println(title);
		System.out.println(category);
		System.out.println(content);

		board_DTO dto = new board_DTO(num, title, content, category, id);
		board_DAO dao = new board_DAO();
		int cnt = dao.update(dto);

		if (cnt > 0) {
			System.out.println("커뮤니티글수정성공!");
			response.sendRedirect("Community.jsp?num="+num);
		} else {
			System.out.println("커뮤니티글수정실패!");
			response.sendRedirect("Community.jsp");
		}
	}

}
