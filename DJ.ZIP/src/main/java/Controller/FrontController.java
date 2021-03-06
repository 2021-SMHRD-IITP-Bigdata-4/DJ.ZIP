package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Front.BoardDeleteService;
import Front.BoardRecomService;
import Front.BoardSearchService;
import Front.BoardUpdateService;
import Front.BoardWriteService;
import Front.Board_replyWriteService;
import Front.CategoryService;
import Front.JoinService;
import Front.LessonCate;
import Front.LessonWriteService;
import Front.LoginService;
import Front.LogoutService;
import Front.MixsetDeleteService;
import Front.MixsetUpdateService;
import Front.MixsetWriteService;
import Front.UpdateService;
import Front.like_InsertService;
import Front.like_listDeleteService;
import Front.like_listInsertService;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

      String path = request.getContextPath();
      String reqURI = request.getRequestURI();
      String resultURI = reqURI.substring(path.length() + 1);
//      System.out.println(resultURI + reqURI);

      Command com = null;

      if (resultURI.equals("JoinService.do")) {

         com = new JoinService();

      } else if (resultURI.equals("LoginService.do")) {

         com = new LoginService();

      } else if (resultURI.equals("LogoutService.do")) {

         com = new LogoutService();

      }else if (resultURI.equals("DeleteService.do")) {

          com = new LogoutService();

       } else if (resultURI.equals("UpdateService.do")) {

         com = new UpdateService();

      } else if (resultURI.equals("BoardWriteService.do")) {

         com = new BoardWriteService();

      } else if (resultURI.equals("BoardUpdateService.do")) {

         com = new BoardUpdateService();

      } else if (resultURI.equals("BoardDeleteService.do")) {

         com = new BoardDeleteService();

      } else if (resultURI.equals("Board_replyWriteService.do")) {

         com = new Board_replyWriteService();

      } else if (resultURI.equals("Board_replyUpdateService.do")) {

         com = new BoardUpdateService();

      } else if (resultURI.equals("Board_replyDeleteService.do")) {

         com = new BoardUpdateService();

      } else if (resultURI.equals("BoardDeleteService.do")) {

         com = new BoardUpdateService();

      } else if (resultURI.equals("CategoryService.do")) {

         com = new CategoryService();

      } else if (resultURI.equals("MixsetWriteService.do")) {

         com = new MixsetWriteService();

      } else if (resultURI.equals("BoardSearchService.do")) {

         com = new BoardSearchService();

      } else if (resultURI.equals("LessonWriteService.do")) {

         com = new LessonWriteService();

      } else if (resultURI.equals("LessonCate.do")) {

         com = new LessonCate();

      } else if (resultURI.equals("like_listDeleteService.do")) {

         com = new like_listDeleteService();

      } else if (resultURI.equals("BoardRecomService.do")) {

         com = new BoardRecomService();
         
      } else if (resultURI.equals("like_listInsertService.do")) {

         com = new like_listInsertService();
   
      } else if (resultURI.equals("MixsetUpdateService.do")) {

          com = new MixsetUpdateService();
    
       }else if (resultURI.equals("MixsetDeleteService.do")) {

           com = new MixsetDeleteService();
     
        }else if (resultURI.equals("like_InsertService.do")) {

            com = new like_InsertService();
      
         }
      
      com.execute(request, response);

   }

}