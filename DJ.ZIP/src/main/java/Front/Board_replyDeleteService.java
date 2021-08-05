package Front;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Command;
import model.board_DAO;
import model.board_reply_DAO;

public class Board_replyDeleteService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");

		String num = request.getParameter("num");

		System.out.println(num);

		board_reply_DAO dao = new board_reply_DAO();
		int cnt = dao.delete(num);

		if (cnt > 0) {
			System.out.println("커뮤니티댓글삭제성공!");
//			response.sendRedirect("CommunityList.jsp");
		} else {
			System.out.println("커뮤니티댓글삭제실패!");
//			response.sendRedirect("CommunityList.jsp");
		}

	}

}
