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
  <body class="u-body u-overlap u-overlap-contrast"><header class="u-align-center u-black u-clearfix u-header u-header" id="sec-bcb0"><div class="u-clearfix u-sheet u-sheet-1">
        
        <% String nick_name = (String)session.getAttribute("nick_name"); %>
        
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
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="DJ-LESSON.html" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">DJ LESSON</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="MIXSET.html" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">MIXSET</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="CommunityList.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Community</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">My Page</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="개인정보수정.html">개인정보수정</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white">레슨목록</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white">LIKE MIXSET</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white">내가 쓴글</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="Login.html" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Login</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-3"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="DJ-LESSON.html" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">DJ LESSON</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="MIXSET.html" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">MIXSET</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="CommunityList.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Community</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">My Page</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-4"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="개인정보수정.html">개인정보수정</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">레슨목록</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">LIKE MIXSET</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">내가 쓴글</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Login</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <p class="u-custom-font u-text u-text-default u-text-1">
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-active-grey-10 u-text-hover-grey-10 u-text-white u-btn-1" href="Home.html" data-page-id="904221268">DJ.ZIP</a>
        </p>
        <div class="u-align-center u-container-style u-group u-group-1">
          <div class="u-container-layout"><span class="u-icon u-icon-circle u-spacing-2 u-white u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 53 53" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-4a9f"></use></svg><svg class="u-svg-content" viewBox="0 0 53 53" x="0px" y="0px" id="svg-4a9f" style="enable-background:new 0 0 53 53;"><path style="fill:#E7ECED;" d="M18.613,41.552l-7.907,4.313c-0.464,0.253-0.881,0.564-1.269,0.903C14.047,50.655,19.998,53,26.5,53
	c6.454,0,12.367-2.31,16.964-6.144c-0.424-0.358-0.884-0.68-1.394-0.934l-8.467-4.233c-1.094-0.547-1.785-1.665-1.785-2.888v-3.322
	c0.238-0.271,0.51-0.619,0.801-1.03c1.154-1.63,2.027-3.423,2.632-5.304c1.086-0.335,1.886-1.338,1.886-2.53v-3.546
	c0-0.78-0.347-1.477-0.886-1.965v-5.126c0,0,1.053-7.977-9.75-7.977s-9.75,7.977-9.75,7.977v5.126
	c-0.54,0.488-0.886,1.185-0.886,1.965v3.546c0,0.934,0.491,1.756,1.226,2.231c0.886,3.857,3.206,6.633,3.206,6.633v3.24
	C20.296,39.899,19.65,40.986,18.613,41.552z"></path><g><path style="fill:#556080;" d="M26.953,0.004C12.32-0.246,0.254,11.414,0.004,26.047C-0.138,34.344,3.56,41.801,9.448,46.76
		c0.385-0.336,0.798-0.644,1.257-0.894l7.907-4.313c1.037-0.566,1.683-1.653,1.683-2.835v-3.24c0,0-2.321-2.776-3.206-6.633
		c-0.734-0.475-1.226-1.296-1.226-2.231v-3.546c0-0.78,0.347-1.477,0.886-1.965v-5.126c0,0-1.053-7.977,9.75-7.977
		s9.75,7.977,9.75,7.977v5.126c0.54,0.488,0.886,1.185,0.886,1.965v3.546c0,1.192-0.8,2.195-1.886,2.53
		c-0.605,1.881-1.478,3.674-2.632,5.304c-0.291,0.411-0.563,0.759-0.801,1.03V38.8c0,1.223,0.691,2.342,1.785,2.888l8.467,4.233
		c0.508,0.254,0.967,0.575,1.39,0.932c5.71-4.762,9.399-11.882,9.536-19.9C53.246,12.32,41.587,0.254,26.953,0.004z"></path>
</g></svg></span>
            <p class="u-text u-text-default u-text-2"><%=nick_name %>OOO님 환영합니다</p>
          </div>
        </div>
      </div></header> 
    <section class="u-clearfix u-image u-shading u-section-1" id="sec-7b2f" data-image-width="1100" data-image-height="618">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <h1 class="u-align-center u-custom-font u-text u-text-default u-text-1">Build Up<br>
          <span style="font-size: 1.875rem;">and</span>
          <br>&nbsp;Drop&nbsp;
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
                  <img alt="" class="u-blog-control u-expanded-width u-image u-image-default u-image-2" src="images/4.jpeg" data-image-width="626" data-image-height="417"><!--/blog_post_image-->
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
                  <img alt="" class="u-blog-control u-expanded-width u-image u-image-default u-image-3" src="images/5.jpeg" data-image-width="1600" data-image-height="1067"><!--/blog_post_image-->
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
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-active-grey-15 u-text-hover-grey-15 u-text-white u-btn-1" href="Home.html" data-page-id="904221268">DJ.ZIP</a>
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