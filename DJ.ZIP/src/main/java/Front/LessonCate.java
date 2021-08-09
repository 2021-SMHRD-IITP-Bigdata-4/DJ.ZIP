package Front;

import java.io.IOException;
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
		// TODO Auto-generated method stub
		request.setCharacterEncoding("EUC-KR");
		String LsCate = request.getParameter("Lscate");
		
		dj_lesson_DAO dao = new dj_lesson_DAO();
		ArrayList<dj_lesson_DTO> LselectList = null;
		
		if(LsCate.equals("전체")) {
			LselectList = dao.LselectAll();
		}else {
			LselectList = dao.LselectGroup(LsCate);
		}
		if(LselectList != null) {
			System.out.print("카테고리별 출력 성공!");
			HttpSession session =request.getSession();
			session.setAttribute("LsList", LselectList);
		}
	}

}
