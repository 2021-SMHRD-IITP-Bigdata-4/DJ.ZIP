package Front;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Controller.Command;
import model.member_DAO;
import model.member_DTO;

public class JoinService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		
		String saveDri1 = request.getServletContext().getRealPath("profile");
		// 폴더명
		System.out.println(saveDri1);
		
		int maxSize = 5 * 1024 * 1024;
		MultipartRequest multi = new MultipartRequest(request, saveDri1, maxSize, "EUC-KR", new DefaultFileRenamePolicy());
		
		String id = multi.getParameter("id");
		String pw = multi.getParameter("pw");
		String nick_name = multi.getParameter("nick_name");
		String dj_career = multi.getParameter("dj_career");
		String email = multi.getParameter("email");
		String tel = multi.getParameter("tel");
		String file_name = URLEncoder.encode(multi.getFilesystemName("imgfile"), "EUC-KR");
		
		
		System.out.println(id);
		System.out.println(pw);
		System.out.println(nick_name);
		System.out.println(dj_career);
		System.out.println(email);
		System.out.println(tel);
		System.out.println(file_name);
		
		
		member_DTO dto = new member_DTO(id, pw, nick_name, email, dj_career, tel, file_name);
		member_DAO dao = new member_DAO();
		
		int a = 0;
		ArrayList<member_DTO> list = dao.SelectAll();
		for (int i = 0; i < list.size(); i++) {
			if(list.get(i).getID().equals(id)) {
				a++;
			}
		}

		int cnt = dao.join(dto);
		
		HttpSession session = request.getSession();
		if(cnt > 0 && a<1) {
			System.out.println("회원가입성공!");
			session.setAttribute("info", dto);
			response.sendRedirect("Home.jsp");
		}else {
			System.out.println("회원가입실패!");
			session.setAttribute("info", dto);
			response.sendRedirect("JoinFail.jsp");
		}
		
		
	}

}
