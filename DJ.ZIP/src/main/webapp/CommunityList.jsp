<%@page import="model.board_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.board_DAO"%>
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
    <title>CommunityList</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="CommunityList.css" media="screen">
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
    <meta property="og:title" content="CommunityList">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body"><header class="u-align-center u-black u-clearfix u-header u-header" id="sec-bcb0"><div class="u-clearfix u-sheet u-sheet-1">
        
        <%
		String info = (String)session.getAttribute("info");
        ArrayList<board_DTO> list = (ArrayList<board_DTO>)session.getAttribute("list");
       	board_DAO dao = new board_DAO();
		ArrayList<board_DTO> list1 = dao.SelectAll();
			
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
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">My Page</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="MyPage.html">MyPage</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white">레슨목록</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="Like-Mixset.html">LIKE MIXSET</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="MyWrite.html">내가 쓴글</a>
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
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="DjLessonPage.html" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">DJ LESSON</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="MIXSET.html" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">MIXSET</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="CommunityList.html" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">CommunityList</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">My Page</a><div class="u-nav-popup"><ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-4"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="MyPage.html">MyPage</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link">레슨목록</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Like-Mixset.html">LIKE MIXSET</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="MyWrite.html">내가 쓴글</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Login.html" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128,128,128,1);">Login</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <p class="u-custom-font u-text u-text-1">
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-active-grey-10 u-text-hover-grey-10 u-text-white u-btn-1" href="Home.html" data-page-id="904221268">DJ.ZIP</a>
        </p>
        <div class="u-align-right u-container-style u-group u-shape-rectangle u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <% if(info != null){%>
            <p class="u-text u-text-2">ㅇㅇ<span style="font-weight: 700;"></span><%=info.getBytes() %>님&nbsp;<span style="font-weight: 700;"></span>환영합니다
            </p>
		  <%}%>
          </div>
        </div>
      </div></header>
    <section class="u-border-2 u-border-grey-75 u-clearfix u-section-1" id="sec-b9a6">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h4 class="u-custom-font u-font-oswald u-text u-text-default u-text-1">Community</h4>
        <form action="CategoryService.do" method="post">
        <div class="u-container-style u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-group u-group-1">
          <div class="u-container-layout">
            <input type="submit" name="전체" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-1" value="전체">
            <input type="submit" name="국내음악" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-2" value="국내음악">
            <input type="submit" name="국외음악" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-3" value="국외음악">
            <input type="submit" name="리뷰" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-4" value="리뷰">
            <input type="submit" name="공지" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-5" value="공지">
          </div>
        </div>
        </form>
        <div class="u-border-3 u-border-grey-40 u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-line u-line-horizontal u-line-1"></div>
        <h5 class="u-text u-text-default u-text-2">카테고리 명 </h5>
        <form action="#" method="get" class="u-border-1 u-border-grey-30 u-search u-search-left u-white u-search-1">
          <button class="u-search-button" type="submit">
            <span class="u-search-icon u-spacing-10">
              <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 56.966 56.966"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-9868"></use></svg>
              <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg-9868" x="0px" y="0px" viewBox="0 0 56.966 56.966" style="enable-background:new 0 0 56.966 56.966;" xml:space="preserve" class="u-svg-content"><path d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23  s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92  c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17  s-17-7.626-17-17S14.61,6,23.984,6z"></path></svg>
            </span>
          </button>
          <input class="u-search-input" type="search" name="search" value="" placeholder="Search">
        </form>
        <a href="CommunityWrite.jsp" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-6">글 작성</a>
        <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-col">
              <div class="u-container-style u-layout-cell u-size-60 u-layout-cell-1">
                <div class="u-container-layout u-valign-top u-container-layout-2">
                  <div class="u-table u-table-responsive u-table-1">
                    <table class="u-table-entity">
                      <colgroup>
                        <col width="6.9%">
                        <col width="10.9%">
                        <col width="52.2%">
                        <col width="11.6%">
                        <col width="10.2%">
                        <col width="8.2%">
                      </colgroup>
                      <tbody class="u-table-body">
                        <tr style="height: 25px;">
                          <td class="u-align-center u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-grey-25 u-table-cell u-table-cell-1">번호</td>
                          <td class="u-align-center u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-grey-25 u-table-cell u-table-cell-2">카테고리</td>
                          <td class="u-align-center u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-grey-25 u-table-cell u-table-cell-3">제목</td>
                          <td class="u-align-center u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-grey-25 u-table-cell u-table-cell-4">글쓴이</td>
                          <td class="u-align-center u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-grey-25 u-table-cell u-table-cell-5">날짜</td>
                          <td class="u-align-center u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-grey-25 u-table-cell u-table-cell-6">조회수</td>
                        </tr>
                        <!--게시물 출력-->
                        
                        <%for(int i =0; i<list1.size(); i++){ %>
                        <tr style="height: 37px;">
                          <td class="u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-table-cell"><%=i+1 %></td>
                          <td class="u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-table-cell"><%=list1.get(i).getCategory() %></td>
                          <td class="u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-table-cell"><a href="Community.html?num=<%=list1.get(i).getNum() %>"><%=list1.get(i).getTitle() %></a></td>
                          <td class="u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-table-cell"><%=list1.get(i).getId() %></td>
                          <td class="u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-table-cell"><%=list1.get(i).getWrite_date() %></td>
                          <td class="u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-table-cell"><%=list1.get(i).getHits() %></td>
                        </tr>
                        <%} %>
                        <%if(list != null) { %>
					<%for(int i =0; i<list.size(); i++){ %>
                        <tr style="height: 37px;">
                          <td class="u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-table-cell"><%=i+1 %></td>
                          <td class="u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-table-cell"><%=list.get(i).getCategory() %></td>
                          <td class="u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-table-cell"><%=list.get(i).getTitle() %></td>
                          <td class="u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-table-cell"><%=list.get(i).getId() %></td>
                          <td class="u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-table-cell"><%=list.get(i).getWrite_date() %></td>
                          <td class="u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-table-cell"><%=list.get(i).getHits() %></td>
                        </tr>
                        <%}} %>
                                                
                      <%--   <%if(list != null) { %>
					<%for(int i =0; i<list.size(); i++){ %>
					<tr style="height: 37px;">
						<td class="u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-table-cell"><%=i+1 %></td>
						<td class="u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-table-cell"><a href="Community.html?num=<%=list.get(i).getCategory() %>"><%=list.get(i).getTitle() %></a></td>
						<td class="u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-table-cell"><%=list.get(i).getNick_name() %></td>
						<td class="u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-table-cell"><%=list.get(i).getWrite_date() %></td>
						<td class="u-border-2 u-border-grey-dark-1 u-border-no-left u-border-no-right u-table-cell"><%=list.get(i).getHits() %></td>
					</tr>
				
				<%} }%> --%>
                      </tbody>
                    </table>
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