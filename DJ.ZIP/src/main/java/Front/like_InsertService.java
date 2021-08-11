package Front;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Command;
import model.member_DAO;

public class like_InsertService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
	      
	      String num = request.getParameter("num");
	      String id = request.getParameter("id");
	      
	      System.out.println(num);
	      System.out.println(id);
	      
	      member_DAO dao = new member_DAO();
	      
	      int cnt = 0;
	      
	      cnt = dao.insert(num, id);
	      
	      if (cnt > 0) {
	         System.out.println("like_list 추가 성공!");
	         response.sendRedirect("MIXSET.jsp");
	         
	      } else {
	         System.out.println("like_list 추가 실패!");
	         response.sendRedirect("MIXSET.jsp");
	      }
	      
	   }

	}