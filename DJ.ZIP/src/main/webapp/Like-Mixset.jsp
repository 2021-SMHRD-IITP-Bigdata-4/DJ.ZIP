<%@page import="model.member_DAO"%>
<%@page import="model.mixset_board_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.mixset_board_DAO"%>
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
    <title>Like Mixset</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Like-Mixset.css" media="screen">
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
    <meta property="og:title" content="Like Mixset">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body"><header class="u-align-center u-black u-clearfix u-header u-header" id="sec-bcb0"><div class="u-clearfix u-sheet u-sheet-1">
        
        <% 
	        member_DTO info = (member_DTO)session.getAttribute("info");
			mixset_board_DAO dao = new mixset_board_DAO();
			member_DAO dao1 = new member_DAO();
			ArrayList<mixset_board_DTO> list = dao.SelectAll();
			String id = request.getParameter("id");
		    ArrayList<mixset_board_DTO> list1 = dao1.likeList(id);
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
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="LessonList.jsp?id=<%=info.getID()%>">레슨목록</a>
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
	</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="LessonList.jsp?id=<%=info.getID()%>">레슨목록</a>
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
                <div class="u-border-2 u-border-grey-75 u-container-layout u-container-layout-1">
                  <h1 class="u-text u-text-default u-text-2"><a href = "MyPage.jsp">개인정보수정</a></h1>
                </div>
              </div>
              <div class="u-black u-container-style u-layout-cell u-size-15 u-size-30-md u-layout-cell-2">
                <div class="u-border-2 u-border-grey-75 u-container-layout u-valign-middle u-container-layout-2">
                  <h1 class="u-text u-text-default u-text-3"><a href = "LessonList.jsp?id=<%=info.getID()%>">레슨목록</a></h1>
                </div>
              </div>
              <div class="u-black u-container-style u-layout-cell u-size-15 u-size-30-md u-layout-cell-3">
                <div class="u-border-2 u-border-grey-75 u-container-layout u-valign-middle u-container-layout-3">
                  <h1 class="u-text u-text-default u-text-4"><a href = "Like-Mixset.jsp?id=<%=info.getID()%>">Like MIXSET</a></h1>
                </div>
              </div>
              <div class="u-black u-container-style u-layout-cell u-size-15 u-size-30-md u-layout-cell-4">
                <div class="u-border-2 u-border-grey-75 u-container-layout u-valign-middle u-container-layout-4">
                  <h1 class="u-text u-text-default u-text-5"><a href = "MyWrite.jsp">내가 쓴 글</a></h1>
                </div>
              </div>
            </div>
          </div>
        </div>
        <h4 class="u-custom-font u-font-oswald u-text u-text-default u-text-6">LIKE MIXSET</h4>
        <div class="u-border-3 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
        <div class="u-black u-container-style u-group u-radius-10 u-shape-round u-group-1">
          <div class="u-container-layout u-container-layout-5">
            <div class="u-container-style u-group u-group-2">
              <div class="u-container-layout u-container-layout-6">
                <div class="u-absolute-hcenter u-expanded u-radius-10 u-shape u-shape-round u-white"></div>
                <img class="u-expanded-width u-image u-image-default u-image-1" src="https://pixabay.com/get/g9ecfbeb193d15f75b9085a03f85a87899aea8dc1373bd36c81354727e1442e72b75cdb2b11f93d73e28a1cbd0947b9229e43f3e6bf2fc0032192b28d2ea7a65a_1280.jpg" alt="" data-image-width="1280" data-image-height="853">
              </div>
            </div>
            <div class="u-align-center u-list u-list-1">
              <div class="u-repeater u-repeater-1">
                <div class="u-container-style u-list-item u-repeater-item">
                  <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-7"><span class="u-icon u-icon-circle u-text-black u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 13.68 13.68" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-403e"></use></svg><svg class="u-svg-content" viewBox="0 0 13.68 13.68" x="0px" y="0px" id="svg-403e" style="enable-background:new 0 0 13.68 13.68;"><g><path style="fill:currentColor;" d="M13.268,1.662c-0.247-0.128-0.548-0.106-0.775,0.06L7.706,5.197V3.946V2.329   c0-0.283-0.159-0.538-0.411-0.667c-0.248-0.128-0.549-0.106-0.776,0.06L0.306,6.233C0.115,6.374,0,6.598,0,6.838   s0.114,0.465,0.306,0.604l6.213,4.512c0.128,0.094,0.283,0.145,0.439,0.145c0.114,0,0.23-0.03,0.337-0.083   c0.252-0.129,0.411-0.388,0.411-0.665V9.732V8.478l4.787,3.477c0.129,0.094,0.283,0.145,0.439,0.145   c0.113,0,0.229-0.03,0.336-0.083c0.253-0.129,0.412-0.388,0.412-0.665V9.733V3.947V2.329C13.68,2.047,13.521,1.791,13.268,1.662z"></path>
</g></svg></span>
                  </div>
                </div>
                <div class="u-container-style u-list-item u-repeater-item">
                  <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-8"><span class="u-icon u-icon-circle u-text-black u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 342.4 342.4" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-4f3e"></use></svg><svg class="u-svg-content" viewBox="0 0 342.4 342.4" x="0px" y="0px" id="svg-4f3e" style="enable-background:new 0 0 342.4 342.4;"><g><g><path d="M171.2,0C76.4,0,0,76.8,0,171.2s76.8,171.2,171.2,171.2s171.2-76.8,171.2-171.2S266,0,171.2,0z M248,184.4l-50.8,29.2    c-0.4,0-0.4,0.4-0.8,0.4l-50.8,29.2c-2.4,1.6-5.6,2.8-8.8,2.8c-8.4,0-15.6-6.8-15.6-15.6v-59.2v-59.6c0-2.8,0.8-5.2,2-7.6    c4.4-7.2,13.6-10,21.2-5.6L196,128l51.2,29.6c2.4,1.2,4.4,3.2,6,5.6C258,170.8,255.6,180.4,248,184.4z"></path>
</g>
</g></svg></span>
                  </div>
                </div>
                <div class="u-align-left u-container-style u-list-item u-repeater-item">
                  <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-9"><span class="u-icon u-icon-circle u-text-black u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 47.607 47.607" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-9674"></use></svg><svg class="u-svg-content" viewBox="0 0 47.607 47.607" x="0px" y="0px" id="svg-9674" style="enable-background:new 0 0 47.607 47.607;"><g><path d="M17.991,40.976c0,3.662-2.969,6.631-6.631,6.631l0,0c-3.662,0-6.631-2.969-6.631-6.631V6.631C4.729,2.969,7.698,0,11.36,0   l0,0c3.662,0,6.631,2.969,6.631,6.631V40.976z"></path><path d="M42.877,40.976c0,3.662-2.969,6.631-6.631,6.631l0,0c-3.662,0-6.631-2.969-6.631-6.631V6.631   C29.616,2.969,32.585,0,36.246,0l0,0c3.662,0,6.631,2.969,6.631,6.631V40.976z"></path>
</g></svg></span>
                  </div>
                </div>
                <div class="u-container-style u-list-item u-repeater-item">
                  <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-10"><span class="u-icon u-icon-circle u-text-black u-icon-4"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 18.909 18.909" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-e40e"></use></svg><svg class="u-svg-content" viewBox="0 0 18.909 18.909" x="0px" y="0px" id="svg-e40e" style="enable-background:new 0 0 18.909 18.909;"><g><path style="fill:currentColor;" d="M10.193,8.311L1.887,1.714C1.484,1.511,1.003,1.533,0.619,1.766C0.233,1.998,0,2.412,0,2.856v13.198   c0,0.443,0.233,0.856,0.619,1.089c0.208,0.126,0.444,0.19,0.683,0.19c0.201,0,0.401-0.046,0.586-0.138l8.306-6.599   c0.4-0.376,0.716-0.658,0.716-1.143S10.641,8.707,10.193,8.311z"></path><path style="fill:currentColor;" d="M18.193,8.311L9.887,1.714C9.484,1.511,9.002,1.533,8.618,1.766   c-0.386,0.232-0.619,0.646-0.619,1.09v13.198c0,0.443,0.233,0.856,0.619,1.089c0.208,0.126,0.444,0.19,0.683,0.19   c0.201,0,0.401-0.046,0.586-0.138l8.306-6.599c0.4-0.376,0.716-0.658,0.716-1.143S18.641,8.707,18.193,8.311z"></path>
</g></svg></span>
                  </div>
                </div>
              </div>
            </div>
            <div class="u-table u-table-responsive u-table-1">
              <table class="u-table-entity">
                <colgroup>
                  <col width="13.6%">
                  <col width="60.2%">
                  <col width="17.3%">
                  <col width="8.9%">
                </colgroup>
                <tbody class="u-table-body">
                  <tr style="height: 32px;">
                    <td class="u-align-center u-border-3 u-border-no-left u-border-no-right u-border-white u-table-cell u-table-cell-1">카테고리</td>
                    <td class="u-align-center u-border-3 u-border-no-left u-border-no-right u-border-white u-table-cell u-table-cell-2">제목</td>
                    <td class="u-align-center u-border-3 u-border-no-left u-border-no-right u-border-white u-table-cell u-table-cell-3">작성자</td>
                    <td class="u-align-center u-border-3 u-border-no-left u-border-no-right u-border-white u-table-cell u-table-cell-4">체크</td>
                  </tr>
                  <% if(info != null) {%>
                  <form action = "like_listDeleteService.do?id=<%=info.getID() %>" method = "post">
                   <%if(list1 != null) {%>
			  		 <%for(int i=0; i<list1.size(); i++) {%>
                  <tr style="height: 32px;">
                    <td class="u-align-center u-border-3 u-border-no-left u-border-no-right u-border-white u-table-cell u-table-cell"><%=list1.get(i).getGenre_name() %></td>
                    <td class="u-align-center u-border-3 u-border-no-left u-border-no-right u-border-white u-table-cell u-table-cell"><a href="MixSetIn.jsp?num=<%=list1.get(i).getNum() %>"><%=list1.get(i).getTitle() %></a></td>
                    <td class="u-align-center u-border-3 u-border-no-left u-border-no-right u-border-white u-table-cell u-table-cell"><%=list1.get(i).getId() %></td>
                    <%System.out.print(list1.get(i).getNum()); %>
                    <td class="u-align-center u-border-3 u-border-no-left u-border-no-right u-border-white u-table-cell u-table-cell"><input type="checkbox" name = "num1" value = "<%=list1.get(i).getNum()%>"></td>
                  </tr>
                  <%}}} %>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <!-- <a href="like_listDeleteService.do" >삭제</a> -->
        <input type="submit" value = "삭제" class="u-active-grey-75 u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-1">
      </form>
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