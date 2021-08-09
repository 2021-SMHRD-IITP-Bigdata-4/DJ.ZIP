package Front;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Command;
import model.member_DAO;

public class like_listDeleteService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");

		String[] num = request.getParameterValues("num1");
		String id = request.getParameter("id");

		System.out.println(num);

		member_DAO dao = new member_DAO();
		int cnt = 0;
		for (int i = 0; i < num.length; i++) {
			System.out.println(num[i]);
			
			cnt = dao.delete(num[i]);
		}

		if (cnt > 0) {
			System.out.println("믹스셋삭제성공!");
			response.sendRedirect("Like-Mixset.jsp?id="+id);
		} else {
			System.out.println("믹스셋삭제실패!");
			response.sendRedirect("Like-Mixset.jsp?id="+id);
		}

	}

}
