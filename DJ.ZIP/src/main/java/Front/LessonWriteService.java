package Front;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Controller.Command;
import model.dj_lesson_DAO;
import model.dj_lesson_DTO;

public class LessonWriteService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("EUC-KR");
		String savedri3 = request.getServletContext().getRealPath("Lessonimg");
				
		System.out.println(savedri3);
		
		int maxSize = 5 * 350 * 240;
		MultipartRequest multi = new MultipartRequest(request, savedri3, maxSize, "EUC-KR", new DefaultFileRenamePolicy());
		String Lesson_Title = multi.getParameter("LessonTitle");
		String id = request.getParameter("id");
		String Lesson_info = multi.getParameter("Lesson");
		String Portfolio = multi.getParameter("portpol");
		String Location_name = multi.getParameter("select");
		String spot = multi.getParameter("area");
		String week = multi.getParameter("week");
		String hour = multi.getParameter("hour");
		String img_file = URLEncoder.encode(multi.getFilesystemName("Lessonimg"), "EUC-KR"); 
		String cancel = multi.getParameter("cancel");
		dj_lesson_DTO dto = new dj_lesson_DTO(Lesson_Title, id, Lesson_info, Portfolio, Location_name, spot, week, hour, img_file, cancel);
		dj_lesson_DAO dao = new dj_lesson_DAO();
		int cnt = dao.lesson_write(dto);
		
		if(cnt>0) {
			System.out.println("성공");
			response.sendRedirect("DjLessonPage.jsp");
			
		}else {
			System.out.println("실패");
			response.sendRedirect("DjLessonPage.jsp");
		}
	
	}

}
