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

public class Board_replyUpdateService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		String r_num = request.getParameter("r_num");
		String id = request.getParameter("name");
		String content = request.getParameter("message");
		String write_date = request.getParameter("write_date");
		String num = request.getParameter("num");

		System.out.println(r_num);
		System.out.println(id);
		System.out.println(content);
		System.out.println(write_date);
		System.out.println(num);

		board_reply_DTO dto = new board_reply_DTO(r_num, id, content, write_date, num);
		board_reply_DAO dao = new board_reply_DAO();
		int cnt = dao.update(dto);

		if (cnt > 0) {
			System.out.println("커뮤니티댓글수정성공!");
//			response.sendRedirect("CommunityList.jsp");
		} else {
			System.out.println("커뮤니티댓글수정실패!");
//			response.sendRedirect("CommunityList.jsp");
		}

	}

}
