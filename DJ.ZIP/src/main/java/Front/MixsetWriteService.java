package Front;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Controller.Command;
import model.board_DAO;
import model.board_DTO;
import model.mixset_board_DAO;
import model.mixset_board_DTO;

public class MixsetWriteService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		String saveDri1 = request.getServletContext().getRealPath("img");
		// 폴더명
		System.out.println(saveDri1);
		
		int maxSize = 5 * 1024 * 1024;
		MultipartRequest multi = new MultipartRequest(request, saveDri1, maxSize, "EUC-KR", new DefaultFileRenamePolicy());
		
		String saveDri2 = request.getServletContext().getRealPath("music");
		// 폴더명
		System.out.println(saveDri2);
		
		String title = request.getParameter("Title");
		String genre_name = request.getParameter("select");
		String content = request.getParameter("message");
		String id = request.getParameter("ID");
		String imgName = URLEncoder.encode(multi.getFilesystemName("imgfile"), "EUC-KR");
		String fileName = URLEncoder.encode(multi.getFilesystemName("file"), "EUC-KR");

		System.out.println(title);
		System.out.println(genre_name);
		System.out.println(content);
		System.out.println(id);
		System.out.println(imgName);
		System.out.println(fileName);

		mixset_board_DTO dto = new mixset_board_DTO(title, content, id, genre_name, imgName, fileName);
		mixset_board_DAO dao = new mixset_board_DAO();
		int cnt = dao.mixset_write(dto);

		if (cnt > 0) {
			System.out.println("Mixset글쓰기 성공!");
			response.sendRedirect("MIXSET.jsp");
		} else {
			System.out.println("Mixset글쓰기 실패!");
			response.sendRedirect("MIXSET.jsp");
		}
	}

}
