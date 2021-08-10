package Front;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Controller.Command;
import model.mixset_board_DAO;
import model.mixset_board_DTO;

public class MixsetUpdateService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		String saveDri1 = request.getServletContext().getRealPath("img");
		// 폴더명
		System.out.println(saveDri1);
		
		int maxSize = 100 * 1024 * 1024;
		MultipartRequest multi = new MultipartRequest(request, saveDri1, maxSize, "EUC-KR", new DefaultFileRenamePolicy());
		
		String saveDri2 = request.getServletContext().getRealPath("music");
		// 폴더명
		System.out.println(saveDri2);
		
		String num = request.getParameter("num");
		String title = multi.getParameter("title");
		String genre_name = multi.getParameter("select");
		String content = multi.getParameter("message");
		String imgName = URLEncoder.encode(multi.getFilesystemName("imgfile"), "EUC-KR");
		String fileName = URLEncoder.encode(multi.getFilesystemName("file"), "EUC-KR");
		String id = request.getParameter("ID");

		System.out.println(title);
		System.out.println(genre_name);
		System.out.println(content);
		System.out.println(id);
		System.out.println(imgName);
		System.out.println(fileName);

		mixset_board_DTO dto = new mixset_board_DTO(num, title, content, fileName, genre_name, imgName,id);
		mixset_board_DAO dao = new mixset_board_DAO();
		int cnt = dao.update(dto);

		if (cnt > 0) {
			System.out.println("Mixset 수정 성공!");
			response.sendRedirect("MIXSET.jsp");
		} else {
			System.out.println("Mixset 수정 실패!");
			response.sendRedirect("MIXSET.jsp");
		}
	}

}
