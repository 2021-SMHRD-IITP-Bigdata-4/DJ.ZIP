package Front;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.Command;
import model.board_DAO;
import model.board_DTO;

public class BoardWriteService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		String title = request.getParameter("name");
		String category = request.getParameter("select");
		String content = request.getParameter("message");
		String id = request.getParameter("ID");

		System.out.println(title);
		System.out.println(category);
		System.out.println(content);
		System.out.println(id);

		board_DTO dto = new board_DTO(title, content, category, id);
		board_DAO dao = new board_DAO();
		int cnt = dao.write(dto);

		if (cnt > 0) {
			System.out.println("Ŀ�´�Ƽ�۾��⼺��!");
			response.sendRedirect("CommunityList.jsp");
		} else {
			System.out.println("Ŀ�´�Ƽ�۾������!");
			response.sendRedirect("CommunityList.jsp");
		}
	}
}
