package Front;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Command;
import model.board_DAO;
import model.board_DTO;
import model.board_reply_DAO;
import model.board_reply_DTO;

public class Board_replyWriteService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String content = request.getParameter("message");

		System.out.println(id);
		System.out.println(content);

		board_reply_DTO dto = new board_reply_DTO(id, content);
		board_reply_DAO dao = new board_reply_DAO();
		int cnt = dao.write(dto);

		if (cnt > 0) {
			System.out.println("Ä¿¹Â´ÏÆ¼´ñ±Û¾²±â¼º°ø!");
//			response.sendRedirect("Community.jsp");
		} else {
			System.out.println("Ä¿¹Â´ÏÆ¼´ñ±Û¾²±â½ÇÆÐ!");
//			response.sendRedirect("Community.jsp");
		}

	}

}
