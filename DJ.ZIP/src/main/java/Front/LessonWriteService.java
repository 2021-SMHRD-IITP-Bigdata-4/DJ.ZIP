package Front;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Controller.Command;

public class LessonWriteService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("EUC-KR");
		String savedri3 = request.getServletContext().getRealPath("img");
				
		System.out.print(savedri3);
		
		int maxSize = 5* 350 * 240;
		MultipartRequest multi = new MultipartRequest(request, savedri3, maxSize, "EUC-KR", new DefaultFileRenamePolicy());
		
		String LessonTitle = multi.getParameter("LessonTitle");
		String select = multi.getParameter("select");
		String Lesson = multi.getParameter("Lesson");
		String portpol = multi.getParameter("portpol");
		String area = multi.getParameter("area");
		String cancel = multi.getParameter("cancel");
	
		System.out.println(LessonTitle);
		System.out.println(Lesson);
		System.out.println(portpol);
		System.out.println(area);
		System.out.println(cancel);
	
	}

}
