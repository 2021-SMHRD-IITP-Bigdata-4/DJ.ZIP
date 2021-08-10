<%@page import="model.mixset_board_DTO"%>
<%@page import="model.mixset_board_DAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.board_DTO"%>
<%@page import="model.board_DAO"%>
<%@page import="model.member_DTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="개인정보수정, 레슨목록, Like MIXSET, 내가 쓴 글, DJ.ZIP">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>MyWrite</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="MyWrite.css" media="screen">
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
    <meta property="og:title" content="MyWrite">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body"><header class="u-align-center u-black u-clearfix u-header u-header" id="sec-bcb0"><div class="u-clearfix u-sheet u-sheet-1">
        
        <%  
        	member_DTO info = (member_DTO)session.getAttribute("info"); 
			board_DAO dao = new board_DAO();
			ArrayList<board_DTO> list = dao.SelectAll();
			mixset_board_DAO dao1 = new mixset_board_DAO();
		    ArrayList<mixset_board_DTO> list1 = dao1.SelectAll();
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
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="DjLessonPage.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">DJ LESSON</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="MIXSET.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">MIXSET</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="CommunityList.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Community</a>
<%if(info != null) {%>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">My Page</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="MyPage.jsp">MyPage</a>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="LessonList.jsp">레슨목록</a>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="Like-Mixset.jsp?id=<%=info.getID()%>">LIKE MIXSET</a>
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
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="CommunityList.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Community</a>
<%if(info != null) {%>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">My Page</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-4"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="MyPage.jsp">MyPage</a>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="LessonList.jsp">레슨목록</a>
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Like-Mixset.jsp?id=<%=info.getID()%>">LIKE MIXSET</a>
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
            <p class="u-text u-text-2"><span style="font-weight: 700;"></span><%=info.getNick_name()%>님&nbsp;<span style="font-weight: 700;"></span>환영합니다</p>
		  <%}%>
            
          </div>
        </div>
      </div></header>
    <section class="u-clearfix u-section-1" id="sec-1679">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-custom-font u-font-oswald u-text u-text-default u-text-1">MY PAGE</h2>
        <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-black u-container-style u-layout-cell u-size-15 u-size-30-md u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1">
                  <h1 class="u-text u-text-default u-text-2"><a href = "MyPage.jsp">개인정보수정</a></h1>
                </div>
              </div>
              <div class="u-black u-container-style u-layout-cell u-size-15 u-size-30-md u-layout-cell-2">
                <div class="u-container-layout u-valign-middle u-container-layout-2">
                  <h1 class="u-text u-text-default u-text-3"><a href = "LessonList.jsp">레슨목록</a></h1>
                </div>
              </div>
              <div class="u-black u-container-style u-layout-cell u-size-15 u-size-30-md u-layout-cell-3">
                <div class="u-container-layout u-valign-middle u-container-layout-3">
                  <h1 class="u-text u-text-default u-text-4"><a href = "Like-Mixset.jsp?id=<%=info.getID()%>">Like MIXSET</a></h1>
                </div>
              </div>
              <div class="u-black u-container-style u-layout-cell u-size-15 u-size-30-md u-layout-cell-4">
                <div class="u-container-layout u-valign-middle u-container-layout-4">
                  <h1 class="u-text u-text-default u-text-5"><a href = "MyWrite.jsp">내가 쓴 글</a></h1>
                </div>
              </div>
            </div>
          </div>
        </div>
        <h4 class="u-custom-font u-font-oswald u-text u-text-default u-text-6">나의 게시물</h4>
        <div class="u-border-3 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
        <div class="u-table u-table-responsive u-table-1">
          <table class="u-table-entity">
            <colgroup>
              <col width="10.2%">
              <col width="19%">
              <col width="39.5%">
              <col width="16.9%">
              <col width="14.4%">
            </colgroup>
            <tbody class="u-table-body">
              <tr style="height: 45px;">
                <td class="u-align-center u-black u-border-1 u-border-grey-dark-1 u-table-cell u-table-cell-1">번호</td>
                <td class="u-align-center u-black u-border-1 u-border-grey-dark-1 u-table-cell u-table-cell-2">카테고리</td>
                <td class="u-align-center u-black u-border-1 u-border-grey-dark-1 u-table-cell u-table-cell-3">제목</td>
                <td class="u-align-center u-black u-border-1 u-border-grey-dark-1 u-table-cell u-table-cell-4">글쓴이</td>
                <td class="u-align-center u-black u-border-1 u-border-grey-dark-1 u-table-cell u-table-cell-5">날짜</td>
              </tr>
              <%if(info != null) {%>
              <%if(list != null) {%>
			  	<%for(int i=0; i<list.size(); i++) {%>
			  		<%if(list.get(i).getId().equals(info.getID())) {%>
		              <tr style="height: 26px;">
		                <td class="u-align-center u-border-1 u-border-grey-dark-1 u-table-cell"><%=i+1 %></td>
		                <td class="u-align-center u-border-1 u-border-grey-dark-1 u-table-cell"><%=list.get(i).getCategory() %></td>
		                <td class="u-align-center u-border-1 u-border-grey-dark-1 u-table-cell"><a href="Community.jsp?num=<%=list.get(i).getNum() %>"><%=list.get(i).getTitle() %></a></td>
		                <td class="u-align-center u-border-1 u-border-grey-dark-1 u-table-cell"><%=list.get(i).getId() %></td>
		                <td class="u-align-center u-border-1 u-border-grey-dark-1 u-table-cell"><%=list.get(i).getWrite_date() %></td>
		              </tr>
		        <%}}}} %>
            </tbody>
          </table>
        </div>
        <h4 class="u-custom-font u-font-oswald u-text u-text-default u-text-7">MY MIXSET/MUSIC</h4>
        <div class="u-border-3 u-border-grey-dark-1 u-line u-line-horizontal u-line-2"></div><!--post_details--><!--post_details_options_json--><!--{"source":""}--><!--/post_details_options_json--><!--blog_post-->
        
        <div class="u-container-style u-post-details u-post-details-1">
        <%if(info != null) {%>
              <%if(list1 != null) {%>
			  	<%for(int i=0; i<list1.size(); i++) {%>
			  		<%if(list1.get(i).getId().equals(info.getID())) {%>
          <div class="u-container-layout u-container-layout-5"><!--blog_post_image-->
            <img alt="" class="u-blog-control u-image u-image-default u-image-1" src="images/pexels-photo-167467.jpeg"><!--/blog_post_image--><!--blog_post_header-->
            <h2 class="u-blog-control u-text u-text-8">
              <a class="u-post-header-link" href="blog/1.html"><!--blog_post_header_content--><a href="MixSetIn.jsp?num=<%=list1.get(i).getNum() %>"><%=list1.get(i).getTitle() %></a><!--/blog_post_header_content--></a>
            </h2><!--/blog_post_header--><!--blog_post_content-->
            <div class="u-align-justify u-blog-control u-post-content u-text u-text-9"><!--blog_post_content_content--><%=list1.get(i).getId()%><!--/blog_post_content_content--></div><!--/blog_post_content--><!--blog_post_metadata-->
            <div class="u-blog-control u-metadata u-text-grey-30 u-metadata-1"><!--blog_post_metadata_date-->
              <span class="u-meta-date u-meta-icon"><!--blog_post_metadata_date_content--><%=list1.get(i).getWrite_date()%><!--/blog_post_metadata_date_content--></span><!--/blog_post_metadata_date--><!--blog_post_metadata_category-->
              <span class="u-meta-category u-meta-icon"><!--blog_post_metadata_category_content--><%=list1.get(i).getGenre_name()%><!--/blog_post_metadata_category_content--></span><!--/blog_post_metadata_category--><!--blog_post_metadata_comments-->
              <span class="u-meta-comments u-meta-icon"><!--blog_post_metadata_comments_content--><%=list1.get(i).getHits()%><!--/blog_post_metadata_comments_content--></span><!--/blog_post_metadata_comments-->
            </div><!--/blog_post_metadata-->
          </div>
        <%}}}} %>
        </div><!--/blog_post--><!--/post_details--><!--post_details--><!--post_details_options_json--><!--{"source":""}--><!--/post_details_options_json--><!--blog_post-->
             
              </div>
            </div>
          </div>
        </div><!--/blog_post--><!--/post_details-->
      </div>
    </section>
    
    
    <footer class="u-align-center u-black u-clearfix u-footer u-footer" id="sec-d7f7"><div class="u-align-left u-clearfix u-sheet u-sheet-1">
        <h1 class="u-custom-font u-text u-text-default u-text-1">
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-active-grey-15 u-text-hover-grey-15 u-text-white u-btn-1" href="Home.jsp" data-page-id="904221268">DJ.ZIP</a>
        </h1>
        <p class="u-text u-text-default u-text-2">광주광역시 동구 예술길 31-15 3층 (주)스마트인재개발원</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/css-templates" target="_blank">
        <span>CSS Templates</span>
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