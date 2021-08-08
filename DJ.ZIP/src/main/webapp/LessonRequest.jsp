<%@page import="model.dj_lesson_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.dj_lesson_DAO"%>
<%@page import="model.member_DTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="DJ.ZIP">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>LessonRequest</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="LessonRequest.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.21.3, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700|Alfa+Slab+One:400">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="LessonRequest">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body"><header class="u-align-center u-black u-clearfix u-header u-header" id="sec-bcb0"><div class="u-clearfix u-sheet u-sheet-1">
        
       <% member_DTO info = (member_DTO)session.getAttribute("info");
        dj_lesson_DAO dao = new dj_lesson_DAO();
        ArrayList<dj_lesson_DTO> list = dao.my_lesson_write();

        
        
        
        
        %>
        
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse u-custom-font u-font-oswald" style="font-size: 1.125rem; letter-spacing: 1px; text-transform: uppercase; font-weight: 700;">
            <a class="u-button-style u-custom-color u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-color u-custom-text-hover-color u-custom-text-shadow u-custom-text-shadow-blur u-custom-text-shadow-color u-custom-text-shadow-transparency u-custom-text-shadow-x u-custom-text-shadow-y u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-custom-font u-font-oswald u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="Home.html" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="DjLessonPage.html" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">DJ LESSON</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="MIXSET.html" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">MIXSET</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="CommunityList.html" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">CommunityList</a>
<%if(info != null) {%>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">My Page</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="MyPage.html">MyPage</a>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white">레슨목록</a>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="Like-Mixset.html">LIKE MIXSET</a>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="MyWrite.html">내가 쓴글</a>
	</li></ul>
	</div>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="LogoutService.do" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Logout</a>
	</li></ul>
	          </div>
<%}else{%>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="Login.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Login</a>
	</li></ul>
	          </div>
<%}%>  
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-3"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="DjLessonPage.html" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">DJ LESSON</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="MIXSET.html" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">MIXSET</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="CommunityList.html" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">CommunityList</a>
<%if(info != null) {%>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">My Page</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-4"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="MyPage.html">MyPage</a>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link">레슨목록</a>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Like-Mixset.html">LIKE MIXSET</a>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="MyWrite.html">내가 쓴글</a>
	</li></ul>
	</div>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="LogoutService.do" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Logout</a>
	</li></ul>
	</div>
<%}else{%>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Login.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Login</a>
	</li></ul>
	</div>
<%}%>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <p class="u-custom-font u-text u-text-1">
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-active-grey-10 u-text-hover-grey-10 u-text-white u-btn-1" href="Home.html" data-page-id="904221268">DJ.ZIP</a>
        </p>
        <div class="u-align-right u-container-style u-group u-shape-rectangle u-group-1">
          <div class="u-container-layout u-container-layout-1">
             
             <!-- 로그인 시 닉네임 출력 -->
          <%if(info != null) {%>
            <p class="u-text u-text-2"><span style="font-weight: 700;"></span><%=info.getNick_name()%>님&nbsp;<span style="font-weight: 700;"></span>환영합니다</p>
		  <%}%>
		  
          </div>
        </div>
      </div></header>
    <section class="u-border-2 u-border-grey-75 u-clearfix u-section-1" id="sec-b9a6">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h4 class="u-custom-font u-font-oswald u-text u-text-default u-text-1">DJ LESSON</h4>
        <div class="u-container-style u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-group u-group-1">
          <div class="u-container-layout">
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-1">전체</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-2">서울</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-3">인천</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-4">대전</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-5">세종</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-6">부산</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-7">울산</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-8">대구</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-9">제주</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-10">경기도</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-11">충청도</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-12">전라도</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-13">경상도</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-14">강원도</a>
          </div>
        </div>
        <div class="u-border-3 u-border-grey-40 u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-line u-line-horizontal u-line-1"></div>
        <div class="u-container-style u-group u-shape-rectangle u-group-2">
          <div class="u-container-layout u-container-layout-2">
            <form action="#" method="get" class="u-border-1 u-border-grey-30 u-search u-search-left u-white u-search-1">
              <button class="u-search-button" type="submit">
                <span class="u-search-icon u-spacing-10">
                  <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 56.966 56.966"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-9868"></use></svg>
                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg-9868" x="0px" y="0px" viewBox="0 0 56.966 56.966" style="enable-background:new 0 0 56.966 56.966;" xml:space="preserve" class="u-svg-content"><path d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23  s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92  c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17  s-17-7.626-17-17S14.61,6,23.984,6z"></path></svg>
                </span>
              </button>
              <input class="u-search-input" type="search" name="search" value="" placeholder="Search">
            </form>
            <h5 class="u-text u-text-default u-text-2">카테고리 명 </h5>
            <a href="https://nicepage.com/k/apple-website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-15">글 작성</a>
          </div>
        </div>
        <div class="u-list u-list-1">
          <div class="u-repeater u-repeater-1"></div>
        </div>
        <div class="u-clearfix u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-col">
              <div class="u-size-30">
                <div class="u-layout-row">
                  <div class="u-align-left u-container-style u-layout-cell u-size-60 u-layout-cell-1">
                    <div class="u-container-layout u-container-layout-3">
                      <h3 class="u-custom-font u-font-oswald u-text u-text-3"><%= list.get(0).getLesson_title() %></h3>
                      <div class="u-border-3 u-border-grey-dark-1 u-expanded-width u-line u-line-horizontal u-line-2"></div>
                      <p class="u-text u-text-4"><%=list.get(0).getId()+" | "+ list.get(0).getWrite_date()%></p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="u-size-30">
                <div class="u-layout-row">
                  <div class="u-container-style u-layout-cell u-size-29 u-layout-cell-2">
                    <div class="u-border-2 u-border-grey-75 u-container-layout u-container-layout-4">
                      <img class="u-image u-image-default u-image-1" src="images/8c76c73bc23cc9796bbbbeacc52faa4a1b4e511718b2d265aa1d9a6702b3df8855b54532c80b9f6c6054cd94b9fb42bf3b4e034aae24c942ee9968_1280.jpg" alt="" data-image-width="1280" data-image-height="720">
                      <div class="u-border-3 u-border-grey-dark-1 u-expanded-width u-line u-line-horizontal u-line-3"></div>
                      <h5 class="u-custom-font u-font-oswald u-text u-text-default u-text-5">레슨 장소</h5>
                      <p class="u-text u-text-6"><%=list.get(0).getLocation_name() %></p>
                    </div>
                  </div>
                  <div class="u-container-style u-layout-cell u-size-31 u-layout-cell-3">
                    <div class="u-border-2 u-border-grey-75 u-container-layout u-container-layout-5">
                      <h2 class="u-text u-text-default u-text-7">정보입력</h2>
                      <div class="u-form u-form-1">
                        <form action="#" method="POST" class="u-clearfix u-form-custom-backend u-form-spacing-10 u-form-vertical u-inner-form" style="padding: 10px" source="custom" name="form" redirect="true">
                          <div class="u-form-group u-form-name">
                            <label for="name-3b9a" class="u-label u-label-1">레슨 가능 요일</label>
                            <input type="text" id="name-3b9a" name="LessonDay" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                          </div>
                          <div class="u-form-group u-form-group-2">
                            <label for="text-6f74" class="u-label u-label-2">레슨 가능 시간대</label>
                            <input type="text" id="text-6f74" name="LessonTime" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                          </div>
                          <div class="u-align-center u-form-group u-form-submit">
                            <a href="#" class="u-black u-border-none u-btn u-btn-round u-btn-submit u-button-style u-radius-10 u-btn-16">레슨신청하기<br>
                            </a>
                            <input type="submit" value="submit" class="u-form-control-hidden">
                          </div>
                          <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
                          <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
                          <input type="hidden" value="" name="recaptchaResponse">
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
    <footer class="u-align-center u-black u-clearfix u-footer u-footer" id="sec-d7f7"><div class="u-align-left u-clearfix u-sheet u-sheet-1">
        <h1 class="u-custom-font u-text u-text-default u-text-1">
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-active-grey-15 u-text-hover-grey-15 u-text-white u-btn-1" href="Home.html" data-page-id="904221268">DJ.ZIP</a>
        </h1>
        <p class="u-text u-text-default u-text-2">광주광역시 동구 예술길 31-15 3층 (주)스마트인재개발원</p>
      </div></footer>
    
  </body>
</html>