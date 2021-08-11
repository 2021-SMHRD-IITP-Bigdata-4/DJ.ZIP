<%@page import="model.dj_lesson_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.dj_lesson_DAO"%>
<%@page import="model.member_DTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="DJ.ZIP">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>DJLessonWrite</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="DJLessonWrite.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.22.0, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700|Alfa+Slab+One:400">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",.
		"@type": "Organization",
		"name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="DJLessonWrite">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body"><header class="u-align-center u-black u-clearfix u-header u-header" id="sec-bcb0"><div class="u-clearfix u-sheet u-sheet-1">
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse u-custom-font u-font-oswald" style="font-size: 1.125rem; letter-spacing: 1px; text-transform: uppercase; font-weight: 700;">
            <a class="u-button-style u-custom-color u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-color u-custom-text-hover-color u-custom-text-shadow u-custom-text-shadow-blur u-custom-text-shadow-color u-custom-text-shadow-transparency u-custom-text-shadow-x u-custom-text-shadow-y u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
		<%
  		member_DTO info = (member_DTO)session.getAttribute("info");
        dj_lesson_DAO dao = new dj_lesson_DAO();
        ArrayList<dj_lesson_DTO> list = dao.my_lesson_write();
        %>
</symbol>

</defs></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-custom-font u-font-oswald u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="Home.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="DJLessonPage.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">DJ LESSON</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="MIXSET.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">MIXSET</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="CommunityList.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">CommunityList</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">My Page</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="MyPage.jsp">MyPage</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="DJLessonDJ2.jsp?id=<%=info.getID()%>">레슨 목록</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="Like-Mixset.jsp">LIKE MIXSET</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="MyWrite.jsp">내가 쓴글</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="Login.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Login</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-3"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="DJLessonPage.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">DJ LESSON</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="MIXSET.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">MIXSET</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="CommunityList.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">CommunityList</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">My Page</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-4"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="MyPage.jsp">MyPage</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="DJLessonDJ2.jsp?id=<%=info.getID()%>">레슨목록</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Like-Mixset.jsp">LIKE MIXSET</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="MyWrite.jsp">내가 쓴글</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Login.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Login</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <p class="u-custom-font u-text u-text-1">
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-active-grey-10 u-text-hover-grey-10 u-text-white u-btn-1" href="Home.jsp" data-page-id="904221268">DJ.ZIP</a>
        </p>
        <div class="u-align-right u-container-style u-group u-shape-rectangle u-group-1">
          <div class="u-container-layout u-container-layout-1">

          <%if(info != null) {%>
            <p class="u-text u-text-2"><span style="font-weight: 700;"></span><%=info.getID()%>님&nbsp;<span style="font-weight: 700;"></span>환영합니다</p>
        <%}%>
          </div>
        </div>
      </div></header>
    <section class="u-border-2 u-border-grey-75 u-clearfix u-section-1" id="sec-b9a6">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-container-style u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-group u-group-1">
        </div>
        <div class="u-container-style u-group u-shape-rectangle u-group-2">
          <div class="u-container-layout u-container-layout-2">
          </div>
        </div>
        <div class="u-list u-list-1">
          <div class="u-repeater u-repeater-1"></div>
        </div>
        <div class="u-container-style u-group u-group-3">
          <div class="u-container-layout u-container-layout-3">
            <h1 class="u-text u-text-default u-text-3">WRITE LESSON&nbsp;</h1>
            <div class="u-align-center u-container-style u-expanded-width u-group u-group-4">
            
            <!-- 입력 시작 -->
            <form action="LessonWriteService.do?id=<%=info.getID() %>" method="POST" accept-charset="EUC-KR" enctype="multipart/form-data">
              <div class="u-container-layout u-container-layout-4">
                <h5 class="u-text u-text-default u-text-4">메인 이미지 파일 첨부</h5><br>
                <input type="file" name="Lessonimg" accept="Lessonimg/*" value="Lessonimg">
              </div>
              
            </div>
          </div>
        </div>
        <div class="u-form u-form-1">
            <div class="u-form-group u-form-name u-form-group-1">
              <label for="name-3b9a" class="u-label u-label-1">글 제목</label>
              <input type="text" id="name-3b9a" name="LessonTitle" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-input-1" required="" maxlength="100" autofocus="autofocus">
            </div>
            <div class="u-form-group u-form-select u-form-group-2">
              <label for="select-7dfb" class="u-label u-label-2">지역</label>
              <div class="u-form-select-wrapper">
                <select id="select-7dfb" name="select" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-input-2">
                  <option value="서울">서울</option>
                  <option value="인천">인천</option>
                  <option value="대전">대전</option>
                  <option value="세종">세종</option>
                  <option value="부산">부산</option>
                  <option value="울산">울산</option>
                  <option value="대구">대구</option>
                  <option value="제주">제주</option>
                  <option value="경기도">경기</option>
                  <option value="충청도">충청</option>
                  <option value="전라도">전라</option>
                  <option value="경상도">경상</option>
                  <option value="강원도">강원</option>
                </select>
                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
              </div>
            </div>
            <div class="u-form-group u-form-message u-form-group-3">
              <label for="message-3b9a" class="u-label u-label-3">레슨설명</label>
              <textarea rows="15" cols="50" id="message-3b9a" name="Lesson" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-input-3" required="" autofocus="autofocus"></textarea>
            </div>
            <div class="u-form-group u-form-textarea u-form-group-4">
              <label for="textarea-c5a6" class="u-label u-label-4">포트폴리오</label>
              <textarea rows="15" cols="50" id="textarea-c5a6" name="portpol" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-input-4" required=""></textarea>
            </div>ex
            <div class="u-form-group u-form-textarea u-form-group-5">
              <label for="textarea-da7c" class="u-label u-label-5">장소</label>
              <textarea rows="4" cols="50" id="textarea-da7c" name="area" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-input-5" required=""></textarea>
            </div>
            <div class="u-form-group u-form-textarea u-form-group-6">
              <label for="textarea-a316" class="u-label u-label-6">취소 및 환불규정</label>
              <textarea rows="7" cols="50" id="textarea-a316" name="cancel" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-input-6" required=""></textarea>
            </div>
            <div class="u-form-group u-form-textarea u-form-group-6">
              <label for="textarea-a316" class="u-label u-label-6">레슨 가능 요일</label>
              <textarea rows="7" cols="50" id="textarea-a316" name="week" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-input-6" required=""></textarea>
            </div>
            
                 <br>
                 <div class="u-form-group u-form-textarea u-form-group-6">
              <label for="textarea-a316" class="u-label u-label-6" >레슨 가능 시간</label>
              <textarea rows="7" cols="50" id="textarea-a316" name="hour" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-input-6" required=""></textarea>
            </div>
            
            <div class="u-align-center u-form-group u-form-submit">
              <input type ="submit" value = "글 작성" class="u-border-2 u-border-black u-btn u-btn-rectangle u-btn-submit u-button-style u-none u-btn-17">
              
              <input type="submit" value="submit" class="u-form-control-hidden">
            </div>
            <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
            <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
            <input type="hidden" value="submit" name="recaptchaResponse">
        
          </form>
         
        </div>
      </div>
    </section>
    
    
    <footer class="u-align-center u-black u-clearfix u-footer u-footer" id="sec-d7f7"><div class="u-align-left u-clearfix u-sheet u-sheet-1">
        <h1 class="u-custom-font u-text u-text-default u-text-1">
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-active-grey-15 u-text-hover-grey-15 u-text-white u-btn-1" href="Home.jsp" data-page-id="904221268">DJ.ZIP</a>
        </h1>
        <p class="u-text u-text-default u-text-2">광주광역시 동구 예술길 31-15 3층 (주)스마트인재개발원</p>
      </div></footer>
    
  </body>
</html>