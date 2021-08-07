package Front;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.Command;
import model.board_DAO;
import model.board_DTO;

public class BoardSearchService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String search = request.getParameter("search");
		
		board_DAO dao = new board_DAO();
		ArrayList<board_DTO> selectSearch = dao.selectSearch(search);
		
		if (selectSearch != null) {
			System.out.print("검색 성공!");
			 HttpSession session = request.getSession();
			 session.setAttribute("search",selectSearch);
			 response.sendRedirect("CommunityList.jsp");
		} else {
			System.out.print("검색 실패ㅜㅜ");
			response.sendRedirect("CommunityList.jsp");
		}
		
	}

}
