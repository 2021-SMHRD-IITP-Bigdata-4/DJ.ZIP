package Front;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Command;

public class LessonWriteService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("EUC-KR");
		String LessonTitle = request.getParameter("LessonTitle");
		String Lesson = request.getParameter("Lesson");
		String portpol = request.getParameter("portpol");
		String area = request.getParameter("area");
		String cancel = request.getParameter("cancel");
	
		System.out.println(LessonTitle);
		System.out.println(Lesson);
		System.out.println(portpol);
		System.out.println(area);
		System.out.println(cancel);
	
	}

}
