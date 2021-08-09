package Front;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.Command;
import model.dj_lesson_DAO;
import model.dj_lesson_DTO;

public class LessonCate implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("EUC-KR");
		String Lscate = request.getParameter("Lscate");
		
		System.out.print(Lscate);
		
		dj_lesson_DAO dao = new dj_lesson_DAO();
		ArrayList<dj_lesson_DTO> LselectList = null;
		
		if(Lscate.equals("��ü")) {
			LselectList = dao.my_lesson_write();
		}else {
			LselectList = dao.LselectGroup(Lscate);
		}
		
		if(LselectList != null) {
			System.out.print("ī�װ��� ��� ����!");
			HttpSession session =request.getSession();
			session.setAttribute("LsList", LselectList);
			response.sendRedirect("DjLessonPage.jsp?Lscate="+ URLEncoder.encode(Lscate,"EUC-KR"));
		}else {
			System.out.print("ī�װ��� ��� ����!");
			response.sendRedirect("DjLessonPage.jsp");
		}
	}

}
