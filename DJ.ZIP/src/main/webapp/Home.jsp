<%@page import="model.member_DTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="DJ LESSON">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Home</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Home.css" media="screen">
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
    <meta property="og:title" content="Home">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body"><header class="u-align-center u-black u-clearfix u-header u-header" id="sec-bcb0"><div class="u-clearfix u-sheet u-sheet-1">
       	
       	<% member_DTO info = (member_DTO)session.getAttribute("info"); %>
       
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
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="DjLessonPage.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">DJ LESSON</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="MIXSET.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">MIXSET</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="Community.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Community</a>

<%if(info != null) {%>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">My Page</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="MyPage.jsp">MyPage</a>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white">레슨목록</a>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="Like-Mixset.jsp">LIKE MIXSET</a>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="MyWrite.jsp">내가 쓴글</a>
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
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="DjLessonPage.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">DJ LESSON</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="MIXSET.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">MIXSET</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Community.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Community</a>

<%if(info != null) {%>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">My Page</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-4"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="MyPage.jsp">MyPage</a>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link">레슨목록</a>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Like-Mixset.jsp">LIKE MIXSET</a>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="MyWrite.jsp">내가 쓴글</a>
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
            <p class="u-text u-text-2"><span style="font-weight: 700;"></span><%=info.getID()%>님&nbsp;<span style="font-weight: 700;"></span>환영합니다</p>
		  <%}%>
            
          </div>
        </div>
      </div></header> 
    <section class="u-clearfix u-image u-shading u-section-1" id="sec-7b2f" data-image-width="1100" data-image-height="618">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <h1 class="u-align-center u-custom-font u-text u-text-default u-text-1">
          <span style="font-size: 3.75rem;">Build Up<br>
          </span>and<br>&nbsp;<span style="font-size: 3.75rem;">Drop</span>&nbsp;
        </h1>
      </div>
    </section>
    <section class="u-clearfix u-section-2" id="carousel_c476">
      <h1 class="u-align-center u-custom-font u-font-oswald u-text u-text-1">DJ LESSON</h1>
      <div class="u-expanded-width u-shape u-shape-rectangle u-shape-1"></div>
      <div class="u-list u-list-1">
        <div class="u-repeater u-repeater-1">
          <div class="u-align-center u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-1">
              <h5 class="u-text u-text-2">24 jul</h5>
              <h4 class="u-align-center-sm u-align-center-xs u-text u-text-3">Internet Radio</h4>
              <img alt="" class="u-align-center-sm u-align-center-xs u-image u-image-default u-image-1" data-image-width="1631" data-image-height="1080" src="images/pexels-photo-167467.jpeg">
              <div class="u-align-center-sm u-align-center-xs u-border-1 u-border-grey-dark-1 u-expanded-width-xl u-line u-line-horizontal u-line-1"></div>
              <p class="u-text u-text-4">DJ LESSON</p>
              <a href="https://nicepage.com/k/ranking-website-templates" class="u-align-center-sm u-align-center-xs u-border-10 u-border-active-palette-2-dark-1 u-border-black u-border-hover-palette-2-dark-1 u-btn u-btn-rectangle u-button-style u-none u-text-body-color u-text-hover-palette-2-base u-btn-1">learn more</a>
            </div>
          </div>
          <div class="u-align-center u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-2">
              <h5 class="u-text u-text-5">06 sept</h5>
              <h4 class="u-align-center-sm u-align-center-xs u-text u-text-6">Why Us?</h4>
              <img alt="" class="u-align-center-sm u-align-center-xs u-image u-image-default u-image-2" data-image-width="1620" data-image-height="1080" src="images/pexels-photo-1434623.jpeg">
              <div class="u-align-center-sm u-align-center-xs u-border-1 u-border-grey-dark-1 u-expanded-width-xl u-line u-line-horizontal u-line-2"></div>
              <p class="u-text u-text-7">DJ LESSON</p>
              <a href="https://nicepage.com/css-templates" class="u-align-center-sm u-align-center-xs u-border-10 u-border-active-palette-2-dark-1 u-border-black u-border-hover-palette-2-dark-1 u-btn u-btn-rectangle u-button-style u-none u-text-body-color u-text-hover-palette-2-base u-btn-2">learn more</a>
            </div>
          </div>
          <div class="u-align-center u-container-style u-list-item u-repeater-item">
            <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-3">
              <h5 class="u-text u-text-8">15 oct</h5>
              <h4 class="u-align-center-sm u-align-center-xs u-text u-text-9">Radio Station</h4>
              <img alt="" class="u-align-center-sm u-align-center-xs u-image u-image-default u-image-3" data-image-width="1620" data-image-height="1080" src="images/pexels-photo-811838.jpeg">
              <div class="u-align-center-sm u-align-center-xs u-border-1 u-border-grey-dark-1 u-expanded-width-xl u-line u-line-horizontal u-line-3"></div>
              <p class="u-text u-text-10">DJ LESSON</p>
              <a href="https://nicepage.com/c/text-button-html-templates" class="u-align-center-sm u-align-center-xs u-border-10 u-border-active-palette-2-dark-1 u-border-black u-border-hover-palette-2-dark-1 u-btn u-btn-rectangle u-button-style u-none u-text-body-color u-text-hover-palette-2-base u-btn-3">learn more</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-white u-section-3" id="carousel_841b">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-custom-font u-font-oswald u-text u-text-1">HOT MIXSET</h1><!--blog--><!--blog_options_json--><!--{"type":"Recent","source":"","tags":"","count":""}--><!--/blog_options_json-->
        <div class="u-blog u-expanded-width u-blog-1">
          <div class="u-repeater u-repeater-1"><!--blog_post-->
            <div class="u-align-center u-blog-post u-container-style u-repeater-item u-video-cover u-white u-repeater-item-1">
              <div class="u-container-layout u-similar-container u-container-layout-1">
                <a class="u-post-header-link" href="blog/1.html"><!--blog_post_image-->
                  <img alt="" class="u-blog-control u-expanded-width u-image u-image-default u-image-1" src="images/pexels-photo-167467.jpeg" data-image-width="626" data-image-height="417"><!--/blog_post_image-->
                </a><!--blog_post_header-->
                <h4 class="u-blog-control u-text u-text-2">
                  <a class="u-post-header-link" href="blog/1.html"><!--blog_post_header_content-->제목<!--/blog_post_header_content--></a>
                </h4><!--/blog_post_header--><!--blog_post_content-->
                <div class="u-blog-control u-post-content u-text u-text-3"><!--blog_post_content_content-->작성자<!--/blog_post_content_content--></div><!--/blog_post_content-->
              </div>
            </div><!--/blog_post--><!--blog_post-->
            <div class="u-align-center u-blog-post u-container-style u-repeater-item u-video-cover u-white u-repeater-item-2">
              <div class="u-container-layout u-similar-container u-container-layout-2">
                <a class="u-post-header-link" href="blog/post-1.html"><!--blog_post_image-->
                  <img alt="" class="u-blog-control u-expanded-width u-image u-image-default u-image-2" src="images/1.jpeg" data-image-width="626" data-image-height="417"><!--/blog_post_image-->
                </a><!--blog_post_header-->
                <h4 class="u-blog-control u-text u-text-4">
                  <a class="u-post-header-link" href="blog/post-1.html"><!--blog_post_header_content-->Post 2 Headline<!--/blog_post_header_content--></a>
                </h4><!--/blog_post_header--><!--blog_post_content-->
                <div class="u-blog-control u-post-content u-text u-text-5"><!--blog_post_content_content-->Sample small text. Lorem ipsum dolor sit amet.<!--/blog_post_content_content--></div><!--/blog_post_content-->
              </div>
            </div><!--/blog_post--><!--blog_post-->
            <div class="u-align-center u-blog-post u-container-style u-repeater-item u-video-cover u-white u-repeater-item-3">
              <div class="u-container-layout u-similar-container u-container-layout-3">
                <a class="u-post-header-link" href="blog/post-2.html"><!--blog_post_image-->
                  <img alt="" class="u-blog-control u-expanded-width u-image u-image-default u-image-3" src="images/2.jpeg" data-image-width="1600" data-image-height="1067"><!--/blog_post_image-->
                </a><!--blog_post_header-->
                <h4 class="u-blog-control u-text u-text-6">
                  <a class="u-post-header-link" href="blog/post-2.html"><!--blog_post_header_content-->Post 3 Headline<!--/blog_post_header_content--></a>
                </h4><!--/blog_post_header--><!--blog_post_content-->
                <div class="u-blog-control u-post-content u-text u-text-7"><!--blog_post_content_content-->Sample small text. Lorem ipsum dolor sit amet.<!--/blog_post_content_content--></div><!--/blog_post_content-->
              </div>
            </div><!--/blog_post-->
          </div>
        </div><!--/blog-->
      </div>
    </section>
    <section class="u-align-center u-clearfix u-section-4" id="sec-040d">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-custom-font u-font-oswald u-text u-text-default u-text-1">Coummunity</h1>
        <div class="u-expanded-width u-table u-table-responsive u-table-1">
          <table class="u-table-entity u-table-entity-1">
            <colgroup>
              <col width="9.7%">
              <col width="13.1%">
              <col width="56.7%">
              <col width="17.1%">
              <col width="3.4%">
            </colgroup>
            <thead class="u-black u-table-header u-table-header-1">
              <tr style="height: 27px;">
                <th class="u-align-center u-border-1 u-border-black u-table-cell">번호</th>
                <th class="u-align-center u-border-1 u-border-black u-table-cell">카테고리</th>
                <th class="u-align-center u-border-1 u-border-black u-table-cell">제목</th>
                <th class="u-align-center u-border-1 u-border-black u-table-cell">글쓴이</th>
                <th class="u-align-center u-border-1 u-border-black u-table-cell">날짜</th>
              </tr>
            </thead>
            <tbody class="u-table-body">
              <tr style="height: 32px;">
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">1</td>
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">음악</td>
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell"></td>
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">Description</td>
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">Description</td>
              </tr>
              <tr style="height: 32px;">
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">2</td>
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">음악</td>
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell"></td>
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">Description</td>
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">Description</td>
              </tr>
              <tr style="height: 44px;">
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">3</td>
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">기기</td>
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell"></td>
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">Description</td>
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">Description</td>
              </tr>
              <tr style="height: 44px;">
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">4</td>
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">기기</td>
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell"></td>
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">Description</td>
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">Description</td>
              </tr>
              <tr style="height: 47px;">
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">5</td>
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell"></td>
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell"></td>
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell"></td>
                <td class="u-align-center u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell"></td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </section>
    <style class="u-overlap-style">.u-overlap:not(.u-sticky-scroll) .u-header {
background-color: #000000 !important
}</style>
    
    
    <footer class="u-align-center u-black u-clearfix u-footer u-footer" id="sec-d7f7"><div class="u-align-left u-clearfix u-sheet u-sheet-1">
        <h1 class="u-custom-font u-text u-text-default u-text-1">
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-active-grey-15 u-text-hover-grey-15 u-text-white u-btn-1" href="Home.jsp" data-page-id="904221268">DJ.ZIP</a>
        </h1>
        <p class="u-text u-text-default u-text-2">광주광역시 동구 예술길 31-15 3층 (주)스마트인재개발원</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-mockup" target="_blank">
        <span>Website Mockup</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.com/html-website-builder" target="_blank">
        <span>HTML Designer</span>
      </a>. 
    </section>
  </body>
</html>