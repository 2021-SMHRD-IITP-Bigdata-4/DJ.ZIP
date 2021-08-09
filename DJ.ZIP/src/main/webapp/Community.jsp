<%@page import="java.util.ArrayList"%>
<%@page import="model.board_reply_DTO"%>
<%@page import="model.board_reply_DAO"%>
<%@page import="model.board_DAO"%>
<%@page import="model.board_DTO"%>
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
    <title>Community</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Community.css" media="screen">
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
    <meta property="og:title" content="Community">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body"><header class="u-align-center u-black u-clearfix u-header u-header" id="sec-bcb0"><div class="u-clearfix u-sheet u-sheet-1">
        
        <%
        member_DTO info = (member_DTO)session.getAttribute("info"); 
        String num1 = request.getParameter("num");
        board_DAO dao = new board_DAO();
        board_DTO selectOne = dao.selectOne(num1);
        
        board_reply_DAO dao1 = new board_reply_DAO();
        ArrayList<board_reply_DTO> list = dao1.SelectAll(num1);
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
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="CommunityList.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Community</a>
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
    <section class="u-clearfix u-section-1" id="sec-5852">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-container-style u-group u-white u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <h2 class="u-text u-text-default u-text-1"><%=selectOne.getTitle() %></h2>
            <p class="u-text u-text-default u-text-2"><%=selectOne.getId() %> | <%=selectOne.getWrite_date() %> | <%=selectOne.getHits() %> | <%=selectOne.getRecom() %></p>
            <div class="u-border-3 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
          </div>
        </div>
<%--         <%System.out.println(selectOne.getWrite_date()); %> --%>

        <div class="u-container-style u-group u-shape-rectangle u-group-2">
          <div class="u-container-layout u-container-layout-2">
            <p class="u-text u-text-3"><%=selectOne.getContent() %></p>
          </div>
        </div>
        <div class="u-container-style u-group u-shape-rectangle u-group-3">
          <div class="u-container-layout u-container-layout-3">
            <div class="u-border-3 u-border-grey-dark-1 u-expanded-width u-line u-line-horizontal u-line-2"></div>
            <a href="CommunityList.jsp" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-dark-1 u-radius-6 u-btn-1">목록</a>
            <%if (selectOne.getId().equals(info.getID())){ %>
            <a href="CommunityUpdate.jsp?num=<%=num1 %>" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-dark-1 u-radius-6 u-btn-2">수정</a>
			<%} %>
			<a href="BoardDeleteService.do?num=<%=num1 %>" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-dark-1 u-radius-6 u-btn-3">삭제</a>
      <!--       
            글수정
            <form action="BoardUpdate.do?num1=" method="post">
            <input type="submit" value="수정" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-dark-1 u-radius-6 u-btn-2">
            </form>
            
            
            글삭제
            <form action="BoardDelete.do?num1=" method="post" >
            <input type="submit" value="삭제" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-palette-1-dark-1 u-radius-6 u-btn-3">
            </form>
            
             -->
            <div class="u-container-style u-group u-group-4">
              <div class="u-container-layout">
                <p class="u-text u-text-4"><%=selectOne.getRecom() %></p><span class="u-icon u-icon-circle u-text-black u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-987a"></use></svg><svg class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px" id="svg-987a" style="enable-background:new 0 0 512 512;"><g><g><path d="M503.562,272.168c0-25.965-21.124-47.088-47.088-47.088h-16.03h-69.345c13.222-23.935,20.253-46.525,20.253-77.724v-5.042    c0-0.003,0-0.005,0-0.008c-0.005-16.782-6.491-32.607-18.267-44.559c-11.769-11.945-27.482-18.669-44.245-18.931    c-0.16-0.002-0.321-0.004-0.481-0.004c-16.247,0-30.455,12.922-31.789,29.023c-6.361,76.781-80.346,116.349-129.835,140.415    v-7.945c0-8.3-6.729-15.028-15.028-15.028H23.466c-8.3,0-15.028,6.729-15.028,15.028v256.48c0,8.299,6.729,15.028,15.028,15.028    h96.18c18.422,0,34.396-10.639,42.129-26.091C215.299,508.972,261.799,512,315.199,512c9.121,0,18.452-0.088,28.046-0.179    c10.609-0.1,21.579-0.204,33.079-0.204h47.515c25.965,0,47.088-21.124,47.088-47.088c0-8.73-2.388-16.912-6.545-23.929    c13.529-8.283,22.575-23.199,22.575-40.191c0-8.73-2.387-16.912-6.545-23.929c13.529-8.283,22.575-23.199,22.575-40.191    c0-12.228-4.687-23.379-12.356-31.758C498.635,296.085,503.562,284.694,503.562,272.168z M136.678,464.724    c0,9.392-7.64,17.032-17.032,17.032h-17.032v-49.092c0-8.3-6.729-15.028-15.028-15.028c-8.299,0-15.028,6.729-15.028,15.028    v49.092H38.495V255.332h98.184V464.724z M424.414,319.256h16.03h15.455c9.392,0,17.032,7.64,17.032,17.032    s-7.64,17.032-17.032,17.032h-15.455h-0.575h-15.455c-8.3,0-15.028,6.729-15.028,15.028s6.729,15.028,15.028,15.028h15.455    c9.392,0,17.032,7.64,17.032,17.032s-7.64,17.032-17.032,17.032h-16.03c-8.3,0-15.028,6.729-15.028,15.028    c0,8.299,6.729,15.028,15.028,15.028c9.392,0,17.032,7.64,17.032,17.032c0,9.392-7.64,17.032-17.032,17.032h-47.515    c-11.642,0-22.684,0.104-33.363,0.206c-66.992,0.633-116.21,1.101-176.029-26.674V281.537h-0.001    c1.564-0.756,3.169-1.531,4.806-2.32c26.125-12.596,61.904-29.846,92.668-55.973c37.661-31.986,58.562-69.981,62.119-112.929    c0.042-0.51,1.022-1.449,1.829-1.449c0.005,0,0.011,0,0.016,0c18.156,0.284,32.927,15.293,32.927,33.457v5.032    c0,31.24-8.147,51.006-25.188,77.724h-23.904c-8.3,0-15.028,6.729-15.028,15.028c0,8.3,6.729,15.028,15.028,15.028h32.167    c0.015,0,0.03,0,0.045,0h96.028h16.03c9.392,0,17.032,7.64,17.032,17.032c0,9.392-7.64,17.032-17.032,17.032h-16.03h-16.03    c-8.3,0-15.028,6.729-15.028,15.028C409.386,312.527,416.115,319.256,424.414,319.256z"></path>
</g>
</g><g><g><path d="M472.307,111.062h-32.06c-8.3,0-15.028,6.729-15.028,15.028c0,8.299,6.729,15.028,15.028,15.028h32.06    c8.3,0,15.028-6.729,15.028-15.028C487.335,117.791,480.607,111.062,472.307,111.062z"></path>
</g>
</g><g><g><path d="M247.887,111.062h-32.06c-8.3,0-15.028,6.729-15.028,15.028c0,8.299,6.729,15.028,15.028,15.028h32.06    c8.299,0,15.028-6.729,15.028-15.028C262.915,117.791,256.186,111.062,247.887,111.062z"></path>
</g>
</g><g><g><path d="M308.991,35.282l-16.03-27.765c-4.15-7.188-13.341-9.651-20.528-5.5c-7.188,4.15-9.65,13.341-5.5,20.528l16.03,27.765    c2.783,4.822,7.835,7.516,13.028,7.516c2.549,0,5.134-0.649,7.5-2.016C310.678,51.661,313.141,42.47,308.991,35.282z"></path>
</g>
</g><g><g><path d="M415.701,2.017c-7.188-4.152-16.38-1.687-20.528,5.5l-16.03,27.765c-4.151,7.187-1.688,16.379,5.5,20.528    c2.366,1.367,4.95,2.016,7.5,2.016c5.194,0,10.246-2.695,13.028-7.516l16.03-27.765C425.351,15.358,422.889,6.167,415.701,2.017z"></path>
</g>
</g></svg></span>
              </div>
            </div>
          </div>
        </div>
        <div class="u-clearfix u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-layout-cell u-size-16 u-layout-cell-1" data-animation-name="fadeIn" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="">
                <div class="u-container-layout u-container-layout-5">
                  <div class="u-expanded-width u-image u-image-circle u-preserve-proportions u-image-1" alt="" data-image-width="197" data-image-height="197"></div>
                  <img alt="프로필사진 없음" src="./img/<%=info.getFile_name() %>" name="profile" data-image-width="197" data-image-height="197" class="u-image u-image-circle u-preserve-proportions u-image-2">
                  <h6 class="u-align-center u-text u-text-5"><%=selectOne.getId() %></h6>
                  <div class="u-form u-form-1">
                <%--   <%if(info != null) {%>
                    <form action="Board_replyWriteService.do?<%=info.getID() %>" method="POST" class="u-clearfix u-form-custom-backend u-form-spacing-10 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 10px;" redirect="true">
                      <div class="u-form-group u-form-message">
                        <label for="message-6bbc" class="u-form-control-hidden u-label"></label>
                        <textarea placeholder="댓글 입력" rows="4" cols="50" id="message-6bbc" name="message" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required=""></textarea>
                      </div>
                      <div class="u-align-right u-form-group u-form-submit">
                        <a href="Board_replyWriteService.do?<%=num1 %>" class="u-active-grey-70 u-black u-border-none u-btn u-btn-round u-btn-submit u-button-style u-hover-grey-70 u-radius-10 u-btn-4">댓글 달기<br>
                        </a>
                        <input type="submit" value="submit" class="u-form-control-hidden">
                      </div>
                      <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
                      <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
                      <input type="hidden" value="" name="recaptchaResponse">
                    </form>
                    <%}else {%>
                    <form action="#" method="POST" class="u-clearfix u-form-custom-backend u-form-spacing-10 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 10px;" redirect="true">
                      <div class="u-form-group u-form-message">
                        <label for="message-6bbc" class="u-form-control-hidden u-label"></label>
                        <textarea placeholder="댓글 입력" rows="4" cols="50" id="message-6bbc" name="message" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required=""></textarea>
                      </div>
                      <div class="u-align-right u-form-group u-form-submit">
                        <a href="#" class="u-active-grey-70 u-black u-border-none u-btn u-btn-round u-btn-submit u-button-style u-hover-grey-70 u-radius-10 u-btn-4">댓글 달기<br>
                        </a>
                        <input type="submit" value="submit" class="u-form-control-hidden">
                      </div>
                      <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
                      <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
                      <input type="hidden" value="" name="recaptchaResponse">
                    </form>
                    <%} %> --%>
                    
                  </div>
                </div>
              </div>
              <!-- 추천수 -->
              <div class="u-container-style u-layout-cell u-size-44 u-layout-cell-2">
                <div class="u-container-layout u-container-layout-6">
                  <p class="u-text u-text-6">COMMNET()</p><span class="u-icon u-icon-circle u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512.012 512.012" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-12a5"></use></svg><svg class="u-svg-content" viewBox="0 0 512.012 512.012" id="svg-12a5"><g><path d="m333.201 115.038c-28.905-59.021-89.37-98.042-157.193-98.042-97.047 0-176 78.505-176 175 0 26.224 5.63 51.359 16.742 74.794l-16.451 82.265c-2.094 10.472 7.144 19.728 17.618 17.656l83.279-16.465c11.213 5.319 22.813 9.364 34.732 12.151-26.717-126.541 69.199-245.321 197.273-247.359z"></path><path d="m495.266 394.79c2.874-6.061 5.373-12.237 7.511-18.514h-.549c37.448-109.917-41.305-225.441-157.567-231.066-.002-.006-.003-.012-.005-.018-100.036-4.61-183.148 75.486-183.148 174.804 0 96.414 78.361 174.857 174.743 174.997 26.143-.035 51.201-5.663 74.568-16.747 91.207 18.032 84.094 16.75 86.189 16.75 9.479 0 16.56-8.686 14.709-17.941z"></path>
</g></svg></span>
                  <div class="u-border-3 u-border-grey-dark-1 u-expanded-width u-line u-line-horizontal u-line-3"></div>
                   <%if(info != null) {%>
                    <form action="Board_replyWriteService.do?num=<%=num1 %>" method="POST" class="u-clearfix u-form-custom-backend u-form-spacing-10 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 10px;" redirect="true">
                      <div class="u-form-group u-form-message">
                        <label for="message-6bbc" class="u-form-control-hidden u-label"></label>
                        <input type="text"  placeholder="댓글 입력" rows="4" cols="50" id="message-6bbc" name="message" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                      </div>
                      <div class="u-align-right u-form-group u-form-submit">
                   
                        <input type="hidden" name="id" value="<%=info.getID() %>" class="u-form-control-hidden">
                        <input type="submit" value="댓글 달기" class="u-active-grey-70 u-black u-border-none u-btn u-btn-round u-btn-submit u-button-style u-hover-grey-70 u-radius-10 u-btn-4">
                      </div>
                    </form>
                    <%}else {%>
                     <form action="Board_replyWriteService.do" method="POST" class="u-clearfix u-form-custom-backend u-form-spacing-10 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 10px;" redirect="true">
                      <div class="u-form-group u-form-message">
                        <label for="message-6bbc" class="u-form-control-hidden u-label"></label>
                        <input type="text" placeholder="댓글 입력" rows="4" cols="50" id="message-6bbc" name="message" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                      </div>
                      <div class="u-align-right u-form-group u-form-submit">
                        <a href="Board_replyWriteService.do" class="u-active-grey-70 u-black u-border-none u-btn u-btn-round u-btn-submit u-button-style u-hover-grey-70 u-radius-10 u-btn-4">댓글 달기<br>
                        </a>
                        <input type="submit" value="submit" class="u-form-control-hidden">
                      </div>
                    </form>
                    <%} %>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="u-clearfix u-gutter-0 u-layout-wrap u-layout-wrap-2">
        <!-- 댓글출력 -->
     <%--    <%System.out.println(list.get(1).getId()); %>
        <%System.out.println(list.get(1).getContent()); %> --%>
        <%for(int i=0; i<list.size();i++){ %>
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-align-center u-container-style u-layout-cell u-shape-rectangle u-size-23 u-layout-cell-3">
                <div class="u-container-layout u-container-layout-7">
                   <img alt="프로필사진 없음" src="./img/<%=info.getFile_name() %>" name="profile" data-image-width="197" data-image-height="197" class="u-image u-image-circle u-preserve-proportions u-image-3">
                  <p class="u-text u-text-default u-text-7"><%=list.get(i).getId() %></p>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-shape-rectangle u-size-37 u-layout-cell-4">
                <div class="u-container-layout u-valign-middle u-container-layout-8">
                  <p class="u-text u-text-8"><%=list.get(i).getContent() %></p>
                </div>
              </div>
            </div>
          </div>
      <%} %>
          
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