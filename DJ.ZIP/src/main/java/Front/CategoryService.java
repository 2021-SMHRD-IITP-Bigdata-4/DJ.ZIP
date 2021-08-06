package Front;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.Command;
import model.board_DAO;
import model.board_DTO;

public class CategoryService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		String all = request.getParameter("전체");
		String koreaMisic = request.getParameter("국내음악");
		String foreignMisic = request.getParameter("국외음악");
		String review = request.getParameter("리뷰");
		String notice = request.getParameter("공지");

		System.out.println(all);
		System.out.println(koreaMisic);
		System.out.println(foreignMisic);
		System.out.println(review);
		System.out.println(notice);
		
		board_DAO dao = new board_DAO();
		ArrayList<board_DTO> selectList = null;
		
		if (all != null) {
			
			selectList = dao.selectGroup(all);

		} else if (koreaMisic != null) {
			
			selectList = dao.selectGroup(koreaMisic);

		} else if (foreignMisic != null) {
			
			selectList = dao.selectGroup(foreignMisic);

		} else if (review != null) {
			
			selectList = dao.selectGroup(review);

		} else {
			
			selectList = dao.selectGroup(notice);

		}

		if (selectList != null) {
			System.out.print("카테고리별 출력 성공!");
			HttpSession session = request.getSession();
			session.setAttribute("list", selectList);
		} else {
			System.out.print("카테고리별 출력 실패ㅜㅜ");
		}
		response.sendRedirect("CommunityList.jsp");
	}

}
