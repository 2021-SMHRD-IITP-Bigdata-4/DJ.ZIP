package Front;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Command;
import model.board_DAO;
import model.board_DTO;

public class MixsetWriteService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		String title = request.getParameter("name");
		String category = request.getParameter("select");
		String content = request.getParameter("message");
		String nick_name = request.getParameter("nick_name");

		System.out.println(title);
		System.out.println(category);
		System.out.println(content);
		System.out.println(nick_name);

		board_DTO dto = new board_DTO(title, content, category, nick_name);
		board_DAO dao = new board_DAO();
		int cnt = dao.write(dto);

		if (cnt > 0) {
			System.out.println("커뮤니티글쓰기성공!");
			response.sendRedirect("CommunityList.jsp");
		} else {
			System.out.println("커뮤니티글쓰기실패!");
			response.sendRedirect("CommunityList.jsp");
		}
	}

}
