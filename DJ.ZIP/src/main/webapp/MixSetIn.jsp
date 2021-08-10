<%@page import="model.mixset_board_DAO"%>
<%@page import="model.mixset_board_DTO"%>
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
    <title>MixSetIn</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="MixSetIn.css" media="screen">
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
    <meta property="og:title" content="MixSetIn">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body"><header class="u-align-center u-black u-clearfix u-header u-header" id="sec-bcb0"><div class="u-clearfix u-sheet u-sheet-1">
        
        <% 
           member_DTO info = (member_DTO)session.getAttribute("info"); 
           String num = request.getParameter("num");
           mixset_board_DAO dao = new mixset_board_DAO();
           mixset_board_DTO selectOne = dao.selectOne(num);
           
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
            <ul class="u-custom-font u-font-oswald u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="Home.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="DJLessonPage.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">DJ LESSON</a>
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
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-3"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="DJLessonPage.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">DJ LESSON</a>
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
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-active-grey-10 u-text-hover-grey-10 u-text-white u-btn-1" href="Home.jsp" data-page-id="904221268">DJ.ZIP</a>
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
        <div class="u-absolute-hcenter u-border-3 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
        <h4 class="u-text u-text-default u-text-1">MIXSET / MUSIC</h4>
        <div class="u-container-style u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-group u-group-1">
          <div class="u-container-layout">
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-1">전체</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-2">HOUSE</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-3">HARD</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-4">D N B</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-5">DubStep</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-6">TRAP</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-7">BASS</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-8">BigRoom</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-9">DISCO</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-10">TRANCE</a>
            <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-11">BOUNCE</a>
          </div>
        </div>
        <div class="u-border-3 u-border-grey-40 u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-line u-line-horizontal u-line-2"></div>
        <h5 class="u-text u-text-default u-text-2"><%=selectOne.getGenre_name()%></h5>
        <div class="u-container-style u-group u-shape-rectangle u-group-2">
          <div class="u-container-layout u-container-layout-2">
            <img class="u-image u-image-default u-preserve-proportions u-image-1" src="./img/<%=selectOne.getImg_name() %>" alt="" data-image-width="253" data-image-height="251"><span class="u-border-2 u-border-grey-75 u-icon u-icon-circle u-spacing-10 u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 47.607 47.607" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-cb69"></use></svg><svg class="u-svg-content" viewBox="0 0 47.607 47.607" x="0px" y="0px" id="svg-cb69" style="enable-background:new 0 0 47.607 47.607;"><g><path d="M17.991,40.976c0,3.662-2.969,6.631-6.631,6.631l0,0c-3.662,0-6.631-2.969-6.631-6.631V6.631C4.729,2.969,7.698,0,11.36,0   l0,0c3.662,0,6.631,2.969,6.631,6.631V40.976z"></path><path d="M42.877,40.976c0,3.662-2.969,6.631-6.631,6.631l0,0c-3.662,0-6.631-2.969-6.631-6.631V6.631   C29.616,2.969,32.585,0,36.246,0l0,0c3.662,0,6.631,2.969,6.631,6.631V40.976z"></path>
</g></svg></span><span class="u-border-2 u-border-grey-75 u-icon u-icon-circle u-spacing-10 u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 494.148 494.148" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-2c6d"></use></svg><svg class="u-svg-content" viewBox="0 0 494.148 494.148" x="0px" y="0px" id="svg-2c6d" style="enable-background:new 0 0 494.148 494.148;"><g><g><path d="M405.284,201.188L130.804,13.28C118.128,4.596,105.356,0,94.74,0C74.216,0,61.52,16.472,61.52,44.044v406.124    c0,27.54,12.68,43.98,33.156,43.98c10.632,0,23.2-4.6,35.904-13.308l274.608-187.904c17.66-12.104,27.44-28.392,27.44-45.884    C432.632,229.572,422.964,213.288,405.284,201.188z"></path>
</g>
</g></svg></span>
            <h6 class="u-text u-text-3"><%=selectOne.getTitle() %></h6>
            <p class="u-text u-text-grey-50 u-text-4"><%=info.getNick_name() %></p>
            <div class="u-video u-video-contain u-video-1">
              <div class="embed-responsive embed-responsive-1">
                <audio src="./music/<%=selectOne.getFile_name()%>"></audio>
              </div>
            </div>
          </div>
        </div>
        <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-12">글 삭제</a>
        <a href="https://nicepage.com/website-templates" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-13">글 수정</a>
        <a href="like_listInsertService.do?id=<%=info.getID() %>&num=<%=num %>" class="u-active-grey-70 u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-14">LIKE</a>
        <a href="https://nicepage.com/k/presentation-html-templates" class="u-active-grey-70 u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-15">SHARE</a>
        <div class="u-clearfix u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-align-center u-container-style u-layout-cell u-size-12 u-layout-cell-1" data-animation-name="fadeIn" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="">
                <div class="u-container-layout u-container-layout-3">
                  <div class="u-expanded-width u-image u-image-circle u-preserve-proportions u-image-2" alt="" data-image-width="197" data-image-height="197"></div>
                  <img class="u-image u-image-default u-preserve-proportions u-image-1" src="./profile/<%=info.getFile_name()%>" data-image-width="120" data-image-height="120">
                  <h6 class="u-text u-text-5"><%=info.getNick_name() %></h6>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-30 u-layout-cell-2">
                <div class="u-container-layout u-container-layout-4">
                  <div class="u-container-style u-expanded-width u-group u-group-3">
                    <div class="u-container-layout u-container-layout-5">
                      <p class="u-text u-text-6"><%=selectOne.getContent() %></p>
                    </div>
                  </div>
                  <p class="u-text u-text-7">COMMNET()</p><span class="u-icon u-icon-circle u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512.012 512.012" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-49db"></use></svg><svg class="u-svg-content" viewBox="0 0 512.012 512.012" id="svg-49db"><g><path d="m333.201 115.038c-28.905-59.021-89.37-98.042-157.193-98.042-97.047 0-176 78.505-176 175 0 26.224 5.63 51.359 16.742 74.794l-16.451 82.265c-2.094 10.472 7.144 19.728 17.618 17.656l83.279-16.465c11.213 5.319 22.813 9.364 34.732 12.151-26.717-126.541 69.199-245.321 197.273-247.359z"></path><path d="m495.266 394.79c2.874-6.061 5.373-12.237 7.511-18.514h-.549c37.448-109.917-41.305-225.441-157.567-231.066-.002-.006-.003-.012-.005-.018-100.036-4.61-183.148 75.486-183.148 174.804 0 96.414 78.361 174.857 174.743 174.997 26.143-.035 51.201-5.663 74.568-16.747 91.207 18.032 84.094 16.75 86.189 16.75 9.479 0 16.56-8.686 14.709-17.941z"></path>
</g></svg></span>
                  <div class="u-border-3 u-border-grey-dark-1 u-expanded-width u-line u-line-horizontal u-line-3"></div>
                  <div class="u-form u-form-1">
                    <form action="#" method="POST" class="u-clearfix u-form-custom-backend u-form-spacing-10 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 10px;" redirect="true">
                      <div class="u-form-group u-form-message">
                        <label for="message-6bbc" class="u-form-control-hidden u-label"></label>
                        <textarea placeholder="댓글 입력" rows="4" cols="50" id="message-6bbc" name="message" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required=""></textarea>
                      </div>
                      <div class="u-align-right u-form-group u-form-submit">
                        <a href="#" class="u-active-grey-70 u-black u-border-none u-btn u-btn-round u-btn-submit u-button-style u-hover-grey-70 u-radius-10 u-btn-16">댓글 달기<br>
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
              <div class="u-align-center u-container-style u-layout-cell u-size-18 u-layout-cell-3">
                <div class="u-container-layout u-container-layout-6">
                  <div class="u-align-center u-container-style u-group u-group-4">
                    <div class="u-container-layout">
                      <p class="u-text u-text-default u-text-8"></p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="u-clearfix u-gutter-0 u-layout-wrap u-layout-wrap-2">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-layout-cell u-size-23 u-layout-cell-4">
                <div class="u-container-layout u-valign-top u-container-layout-8">
                  <div class="u-align-center u-container-style u-group u-group-5">
                    <div class="u-container-layout">
                      <div class="u-image u-image-circle u-preserve-proportions u-image-4" alt="" data-image-width="197" data-image-height="197"></div>
                      <p class="u-text u-text-default u-text-9">닉네임</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-37 u-layout-cell-5">
                <div class="u-container-layout u-valign-middle u-container-layout-10">
                  <p class="u-text u-text-10">댓글내용</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <footer class="u-align-center u-black u-clearfix u-footer u-footer" id="sec-d7f7"><div class="u-align-left u-clearfix u-sheet u-sheet-1">
        <h1 class="u-custom-font u-text u-text-default u-text-1">
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-active-grey-15 u-text-hover-grey-15 u-text-white u-btn-1" href="Home.jsp" data-page-id="904221268">DJ.ZIP</a>
        </h1>
        <p class="u-text u-text-default u-text-2">광주광역시 동구 예술길 31-15 3층 (주)스마트인재개발원</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.com/" target="_blank">
        <span>Website Builder Software</span>
      </a>. 
    </section>
  </body>
</html>