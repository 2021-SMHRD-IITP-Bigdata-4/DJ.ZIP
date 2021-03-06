package Front;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Command;
import model.board_DAO;
import model.mixset_board_DAO;

public class MixsetDeleteService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");

		String num = request.getParameter("num");

		System.out.println(num);

		mixset_board_DAO dao = new mixset_board_DAO();
		int cnt = dao.delete(num);

		if (cnt > 0) {
			System.out.println("mixset 글삭제성공!");
			response.sendRedirect("MIXSET.jsp");
		} else {
			System.out.println("mixset 글삭제실패!");
			response.sendRedirect("MIXSET.jsp");
		}
	}

}
