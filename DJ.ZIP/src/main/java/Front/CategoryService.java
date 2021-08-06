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
		String all = request.getParameter("��ü");
		String koreaMisic = request.getParameter("��������");
		String foreignMisic = request.getParameter("��������");
		String review = request.getParameter("����");
		String notice = request.getParameter("����");

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
			System.out.print("ī�װ��� ��� ����!");
			HttpSession session = request.getSession();
			session.setAttribute("list", selectList);
		} else {
			System.out.print("ī�װ��� ��� ���Ф̤�");
		}
		response.sendRedirect("CommunityList.jsp");
	}

}
