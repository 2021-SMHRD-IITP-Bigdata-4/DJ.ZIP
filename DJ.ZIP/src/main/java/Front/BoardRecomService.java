package Front;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Command;
import model.board_DAO;
import model.board_DTO;

public class BoardRecomService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		String num = request.getParameter("num");
		String recom2 = request.getParameter("recom");
		
		
		System.out.println(num);
		System.out.println(recom2);
		
		
		 if(recom2 == null) { recom2 = "0"; }
		 
		
		int recom1 = Integer.parseInt(recom2);
		
		recom1 += 1;
		
//		System.out.println(recom1);
		
		String recom = String.valueOf(recom1);
		
//		System.out.println(recom);
		
		board_DTO dto = new board_DTO(num, recom);
		board_DAO dao = new board_DAO();
		int cnt = dao.recom(dto);

		if (cnt > 0) {
			System.out.println("커뮤니티글추천성공!");
			response.sendRedirect("Community.jsp?num="+num);
		} else {
			System.out.println("커뮤니티글추천실패!");
			response.sendRedirect("CommunityList.jsp");
		}
		
	}

}
