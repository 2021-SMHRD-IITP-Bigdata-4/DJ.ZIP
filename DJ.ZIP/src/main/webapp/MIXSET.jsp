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
<meta name="keywords" content="DJ.ZIP">
<meta name="description" content="">
<meta name="page_type" content="np-template-header-footer-from-plugin">
<title>MIXSET</title>
<link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="MIXSET.css" media="screen">
<script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
<script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
<meta name="generator" content="Nicepage 3.21.3, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
<link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700|Alfa+Slab+One:400">

<script type="application/ld+json">{
      "@context": "http://schema.org",
      "@type": "Organization",
      "name": ""
}
</script>
<meta name="theme-color" content="#478ac9">
<meta property="og:title" content="MIXSET">
<meta property="og:type" content="website">
</head>
<body class="u-body">
	<header class="u-align-center u-black u-clearfix u-header u-header"
		id="sec-bcb0">
		<div class="u-clearfix u-sheet u-sheet-1">

<!-- �α��ν� ���ǰ�, �ͽ���DAO��ü���� �� �޼ҵ� ȣ�� -->
			<%
			request.setCharacterEncoding("EUC-KR");
			member_DTO info = (member_DTO) session.getAttribute("info");
			mixset_board_DAO dao = new mixset_board_DAO();
			ArrayList<mixset_board_DTO> list = dao.SelectAll();
			String category = request.getParameter("category");
			if (category != null) {
				if(category.equals("��ü")){
					list = dao.SelectAll();
				}else{
					list = dao.selectGroup(category);
				}
			}
			String search = request.getParameter("search");
			System.out.println(search);
			if (search != null) {
				list = dao.selectSearch(search);
			}
			%>
<!-- �޴��κ� -->
			<nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
				<div class="menu-collapse u-custom-font u-font-oswald" style="font-size: 1.125rem; letter-spacing: 1px; text-transform: uppercase; font-weight: 700;">
					<a class="u-button-style u-custom-color u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-color u-custom-text-hover-color u-custom-text-shadow u-custom-text-shadow-blur u-custom-text-shadow-color u-custom-text-shadow-transparency u-custom-text-shadow-x u-custom-text-shadow-y u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#"> <svg>
							<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
							<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
							<defs>
							<symbol id="menu-hamburger" viewBox="0 0 16 16"
								style="width: 16px; height: 16px;">
							<rect y="1" width="16" height="2"></rect>
							<rect y="7" width="16" height="2"></rect>
							<rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
					</a>
				</div>
				<div class="u-custom-menu u-nav-container">
					<ul class="u-custom-font u-font-oswald u-nav u-unstyled u-nav-1">
						<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="Home.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128, 128, 128, 1);">Home</a></li>
						<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="DJLessonPage.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128, 128, 128, 1);">DJLESSON</a></li>
						<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="MIXSET.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128, 128, 128, 1);">MIXSET</a></li>
						<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="CommunityList.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128, 128, 128, 1);">CommunityList</a>
							<% if (info != null) {%>
							</li>
						<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128, 128, 128, 1);">MyPage</a>
						<div class="u-nav-popup">
								<ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-2">
									<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="MyPage.jsp">MyPage</a></li>
									<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="DJLessonDJ2.jsp?id=<%=info.getID()%>">�������</a></li>
									<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="Like-Mixset.jsp">LIKE MIXSET</a></li>
									<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-hover-grey-70 u-white" href="MyWrite.jsp">���� ����</a></li>
								</ul>
							</div></li>
						<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="LogoutService.do" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128, 128, 128, 1);">Logout</a>
						</li>
					</ul>
				</div>
				<% } else { %>
				</li>
				<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-white u-text-hover-grey-15 u-text-white" href="Login.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128, 128, 128, 1);">Login</a>
				</li>
				</ul>
		</div>
		<%}%>
		<div class="u-custom-menu u-nav-container-collapse">
			<div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
				<div class="u-sidenav-overflow">
					<div class="u-menu-close"></div>
					<ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-3">
						<li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128, 128, 128, 1);">Home</a></li>
						<li class="u-nav-item"><a class="u-button-style u-nav-link" href="DJLessonPage.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128, 128, 128, 1);">DJLESSON</a></li>
						<li class="u-nav-item"><a class="u-button-style u-nav-link" href="MIXSET.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128, 128, 128, 1);">MIXSET</a></li>
						<li class="u-nav-item"><a class="u-button-style u-nav-link" href="CommunityList.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128, 128, 128, 1);">CommunityList</a>
							<%if (info != null) {%>
							</li>
						<li class="u-nav-item"><a class="u-button-style u-nav-link" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128, 128, 128, 1);">MyPage</a>
						<div class="u-nav-popup">
								<ul class="u-h-spacing-20 u-nav u-unstyled u-v-spacing-10 u-nav-4">
									<li class="u-nav-item"><a class="u-button-style u-nav-link" href="MyPage.jsp">MyPage</a></li>
									<li class="u-nav-item"><a class="u-button-style u-nav-link" href="DJLessonDJ2.jsp?id=<%=info.getID()%>">�������</a></li>
									<li class="u-nav-item"><a class="u-button-style u-nav-link" href="Like-Mixset.jsp">LIKE MIXSET</a></li>
									<li class="u-nav-item"><a class="u-button-style u-nav-link" href="MyWrite.jsp">���� ����</a></li>
								</ul>
							</div></li>
						<li class="u-nav-item"><a class="u-button-style u-nav-link" href="LogoutService.do" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128, 128, 128, 1);">Logout</a>
						</li>
					</ul>
				</div>
				<% } else { %>
				</li>
				<li class="u-nav-item"><a class="u-button-style u-nav-link" href="Login.jsp" style="padding: 10px 20px; text-shadow: 2px 2px 8px rgba(128, 128, 128, 1);">Login</a>
				</li>
				</ul>
			</div>
			<%}%>
		</div>
		<div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
		</div>
		</nav>
<!-- �ΰ�κ� -->
		<p class="u-custom-font u-text u-text-1">
			<a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-active-grey-10 u-text-hover-grey-10 u-text-white u-btn-1" href="Home.jsp" data-page-id="904221268">DJ.ZIP</a>
		</p>
		<div class="u-align-right u-container-style u-group u-shape-rectangle u-group-1">
			<div class="u-container-layout u-container-layout-1">

<!-- �α��� �� �г��� ��� -->
				<%if (info != null) {%>
				<p class="u-text u-text-2">
					<span style="font-weight: 700;"></span><%=info.getID()%>��&nbsp;<span style="font-weight: 700;"></span>ȯ���մϴ�</p>
				<%}%>
			</div>
		</div>
		</div>
	</header>
<!-- ������ ��� -->
	<section class="u-border-2 u-border-grey-75 u-clearfix u-section-1" id="sec-b9a6">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h4 class="u-text u-text-default u-text-1">MIXSET / MUSIC</h4>
<!-- ī�װ� -->
		<form action="./MIXSET.jsp" method="post" accept-charset="">
			<div class="u-container-style u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-group u-group-1">
				<div class="u-container-layout">
					<input type="submit" name="category" value="��ü" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-1">
					<input type="submit" name="category" value="HOUSE" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-2">
					<input type="submit" name="category" value="HARD" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-3">
					<input type="submit" name="category" value="DNB" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-4">
					<input type="submit" name="category" value="DubStep" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-5">
					<input type="submit" name="category" value="TRAP" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-6">
					<input type="submit" name="category" value="BASS" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-7">
					<input type="submit" name="category" value="BigRoom" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-8">
					<input type="submit" name="category" value="DISCO" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-9">
					<input type="submit" name="category" value="TRANCE" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-10">
					<input type="submit" name="category" value="BOUNCE" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-11">
				</div>
			</div>
		</form>
		
<!-- ī�װ��� -->
			<%if(category != null) {%>
			<div class="u-border-3 u-border-grey-40 u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-line u-line-horizontal u-line-1"></div>
			<h5 class="u-text u-text-default u-text-2"><%=category %></h5>
			<%}else{ %>
			<div class="u-border-3 u-border-grey-40 u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-line u-line-horizontal u-line-1"></div>
			<h5 class="u-text u-text-default u-text-2">��ü</h5>
			<%} %>
<!-- �˻��κ� -->
			<form action="./MIXSET.jsp" method="get" class="u-border-1 u-border-grey-30 u-search u-search-left u-white u-search-1">
				<button class="u-search-button" type="submit">
					<span class="u-search-icon u-spacing-10">
						<svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 56.966 56.966">
							<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-9868"></use>
						</svg> 
						<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg-9868" x="0px" y="0px" viewBox="0 0 56.966 56.966" style="enable-background: new 0 0 56.966 56.966;" xml:space="preserve" class="u-svg-content">
							<path d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23  s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92  c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17  s-17-7.626-17-17S14.61,6,23.984,6z"></path>
						</svg>
					</span>
				</button>
				<input class="u-search-input" type="search" name="search" value="" placeholder="Search">
			</form>
<!-- ���ۼ���ư -->
			<a href="MixsetUpload.jsp?id=<%=info.getID() %>" class="u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-12">�� �ۼ�</a>
<!-- �Խù� ��� -->
			<%if (list != null) {%>
			<%for (int i = 0; i < list.size(); i++) {%>
			<div class="u-border-2 u-border-grey-75 u-container-style u-group u-shape-rectangle u-group-2">
				<div class="u-container-layout u-container-layout-2">
					<div class="u-container-style u-group u-group-3">
						<div class="u-container-layout u-container-layout-3">
							<h6 class="u-text u-text-default u-text-3">
								<a href="MixSetIn.jsp?num=<%=list.get(i).getNum()%>"><%=list.get(i).getTitle()%>
							</h6>
							<p class="u-text u-text-default u-text-grey-50 u-text-4"><%=list.get(i).getId()%></p>
						</div>
					</div>
					<div align="center">
						<audio src="./music/<%=list.get(i).getFile_name()%>" width='400' controls="controls"></audio>
					</div>
					<img class="u-image u-image-default u-preserve-proportions u-image-1" src="./img/<%=list.get(i).getImg_name()%>" alt=""data-image-width="253" data-image-height="251">
					</g>
					</g>
					</svg>
					</span> <a href="#" class="u-active-grey-70 u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-13" style="margin-top: 15px;margin-bottom: 15px;">LIKE</a>
					<a href="#" class="u-active-grey-70 u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-14" style="margin-top: -40px;margin-bottom: 15px;">SHARE</a>
					</g>
					</svg>
					</span>
				</div>
				<br>
			</div>
			<%}} else {%>
			<%for (int i = 0; i < list.size(); i++) {%>
			<div class="u-border-2 u-border-grey-75 u-container-style u-group u-shape-rectangle u-group-2">
				<div class="u-container-layout u-container-layout-2">
					<div class="u-container-style u-group u-group-3">
						<div class="u-container-layout u-container-layout-3">
							<h6 class="u-text u-text-default u-text-3">
								<a href="MixSetIn.jsp?num=<%=list.get(i).getNum()%>"><%=list.get(i).getTitle()%>
							</h6>
							<p class="u-text u-text-default u-text-grey-50 u-text-4"><%=list.get(i).getId()%></p>
						</div>
					</div>
					<div align="center">
						<audio src="./music/<%=list.get(i).getFile_name()%>" width='400'
							controls="controls"></audio>
					</div>
					<img class="u-image u-image-default u-preserve-proportions u-image-1" src="./img/<%=list.get(i).getImg_name()%>" alt="" data-image-width="253" data-image-height="251">
					</g>
					</g>
					</svg>
					</span> <a href="https://nicepage.com/k/presentation-html-templates" class="u-active-grey-70 u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-13">LIKE</a>
					<a href="https://nicepage.com/k/presentation-html-templates" class="u-active-grey-70 u-black u-border-none u-btn u-btn-round u-button-style u-hover-grey-70 u-radius-6 u-btn-14">SHARE</a>
					</g>
					</svg>
					</span>
				</div>
				<br>
			</div>
			<%}}%>
		</div>

	</section>
	<footer class="u-align-center u-black u-clearfix u-footer u-footer" id="sec-d7f7">
		<div class="u-align-left u-clearfix u-sheet u-sheet-1">
			<h1 class="u-custom-font u-text u-text-default u-text-1">
				<a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-active-grey-15 u-text-hover-grey-15 u-text-white u-btn-1" href="Home.jsp" data-page-id="904221268">DJ.ZIP</a>
			</h1>
			<p class="u-text u-text-default u-text-2">���ֱ����� ���� ������ 31-15 3�� (��)����Ʈ���簳�߿�</p>
		</div>
	</footer>
</body>
</html>