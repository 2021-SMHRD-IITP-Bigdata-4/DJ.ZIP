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
		String cate = request.getParameter("cate");

		System.out.println(cate);

		
//		board_DAO dao = new board_DAO();
//		ArrayList<board_DTO> selectList = null;
//		String category = null;
//		
//		if (all != null) {
//			
//			selectList = dao.selectGroup(all);
//			category = "��ü";
//			
//		} else if (koreaMisic != null) {
//			
//			selectList = dao.selectGroup(koreaMisic);
//			category = "��������";
//
//		} else if (foreignMisic != null) {
//			
//			selectList = dao.selectGroup(foreignMisic);
//			category = "��������";
//
//		} else if (review != null) {
//			
//			selectList = dao.selectGroup(review);
//			category = "����";
//
//		} else {
//			
//			selectList = dao.selectGroup(notice);
//			category = "����";
//
//		}

		if (cate != null) {
			System.out.print("ī�װ��� ��� ����!");
			
			 HttpSession session = request.getSession();
			 session.setAttribute("list",cate);
		
			
		} else {
			System.out.print("ī�װ��� ��� ���Ф̤�");
		}
		response.sendRedirect("CommunityList.jsp");
	}

}
