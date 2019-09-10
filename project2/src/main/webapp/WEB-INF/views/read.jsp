<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Board</title>
	<meta name="description" content="Book Preview with BookBlock" />
	<meta name="keywords"content="BookBlock, book preview, look inside, css, transforms, animations, css3, 3d, perspective, fullscreen" />
	<meta name="author" content="Codrops" />
	<link rel="shortcut icon" href="./assets/images/favicon.ico">
	<link rel="stylesheet" type="text/css" href="./viewbook/css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="./viewbook/css/demo.css" />
	<link rel="stylesheet" type="text/css" href="./viewbook/css/bookblock.css" />
	<link rel="stylesheet" type="text/css" href="./viewbook/css/component.css" />
	<link href="./searchBook/css/slider.css" rel="stylesheet" type="text/css" media="all"/>
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
	<link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
	<link href="./button/css/style.css" rel="stylesheet" type="text/css" media="all"/>
	<link rel="stylesheet" type="text/css" href="./readFolder/style1.css" />
	
	
	<script src="viewbook/js/modernizr.custom.js"></script>
	<script src="js/jquery-3.3.1.min.js"></script>

 <style>
<!--  start -->
 html {
  background: linear-gradient(to bottom, #F8E0E6, #F8E0E6);
  height: auto !important;
}
body {
letter-spacing: -0.05em !important;
  background: transparent;
  font-family: 'Nanum Gothic', sans-serif;
}

/* 로고밑 NAV bar */

header #header-bar>.row {
  border-top: 4px solid #FA5882;
  border-right: none;
  border-bottom: none;
}

/* 헤더 배너 */

header .row>div:nth-child(1)>a {
float: left;
position: absolute;
background: url('https://upload.tgd.kr/20181127/ebb3799a0f812c6ced745b11e2d0c45d.png') no-repeat;
background-size: 200px 100px;
background-position: center -50px;
width: 200px;
height: 50px;
margin-top: 5px;


animation: shinLogo 6s;
animation-iteration-count: infinite;
animation-timing-function:ease-in-out;
}

@keyframes shinLogo {
0% {
opacity: 0;
}
10% {
opacity: 1;
}
30% {
background-position: center -50px;
}
50% {
background-position: center 0px;
}
90% {
background-position: center 0px;
}
95% {
background-position: center 0px;
opacity: 1;
}
100% {
background-position: center 0px;
opacity: 0;
}
}

/* 검색폼 보더 */

header #right-search-form>input[type='text'] {
  border: 3px solid #FA5882;
}

/* 트게더 전체메뉴 / 유용한링크 / 트위치 스케쥴 */

#main .menu-wrapper>.header {
  background: #FF0040;
}

.fa-navicon:before,
.fa-reorder:before,
.fa-bars:before {
  color: white;
}

.fa-square:before {
  color: #FA5882;
}

header #header-bar>.row,
#main .menu-wrapper,
#main #main-content>div.frame {
  border-right: none;
  border-bottom: none;
}

#main .menu-wrapper {
  border: none;
}

header .row>div:nth-child(1)>a img {
display: none;
}

header #right-search-form>input[type=text]{
border: 3px solid #F7819F;
}

header #right-search-form>#right-search-btn{
color: #F7819F;
}

header #header-bar>.row{
border-top: 0;
border-radius: 20px;
background-color: rgba(255,255,255,0.5) 
}

header #header-bar #header-top-notice strong.notice-badge{
background: #F7819F;
border-top-left-radius: 10px;
border-bottom-left-radius: 10px;
}

header #header-bar #header-top-notice a {
color: #fff;
background: #F7819F;
margin-left: -4px;
padding: 4px 8px;
font-weight: 900;
border-top-right-radius: 10px;
border-bottom-right-radius: 10px;
}

#main .menu-wrapper>.header{
background: #FA5882;
border-top-left-radius: 10px;
border-top-right-radius: 10px;
}

@keyframes shinLeftMenu {
50% {
background-color: #FA5882;
}
}

#main .menu-wrapper>a>em,
#main .menu-wrapper>a>i.fa.fa-square{
color: #000000;
}

#main .menu-wrapper{
border:0;
}



/* 헤더 검색 버튼 */

header #right-search-form>#right-search-btn {
  color: #FE2E64;
}

/* 헤더 [광고]배경색 */

header #header-bar #header-top-notice strong.notice-badge {
  background: #FE2E64;
}

/* fa색상 */

header #header-bar .fa {
  color: #F7819F;
}

/* 인원 몇명 보는지 */
#board-info #viewers-area {
color: #FA5882;
}

#board-info #viewers-area #viewers:before {
content: "흑우 "; 
cursor: text;
}

#board-info #viewers-area #viewers:after {
content: "마리 존버 중!";
cursor: text;
}

#board-info #viewers-area .fa-user{
display: none; 
}


/* 스트리머 게시판 상단 정보 글씨색상 */

#board-info #board-info-bottom a {
  color: #FA5882;
}

/* 좌측메뉴 숏컷링크 글씨 색상 */

#main .menu-wrapper>a>em {
  color: #FA5882;
}

/* 좌측메뉴 메뉴사이의 공간 색상 */

#main .menu-wrapper .spacer {
  background: #FA5882;
  height: 0.15em;
}

/* 게시글 관련부분 */

#article-list>.article-list-row>.item>.list-title>.list-writer>span {
  width: 120px !important;
}

#article-list #article-list-category {
  border-top: 2px solid #FE2E64;
  background: white;
}

#article-list #article-list-category>a {
  background: white;
}

#article-list>.article-list-row>.item>.list-header>span {
  background-color: #FE2E64;
}

#article-list>.article-list-row>.item>.list-title>small.comment-count {
  color: #FE2E64;
}

#article-list>.article-list-row>.item>.list-title>.list-writer.logged>span {
  color: #FE2E64;
}

.pagination>.active>a,
.pagination>.active>a:focus,
.pagination>.active>a:hover,
.pagination>.active>span,
.pagination>.active>span:focus,
.pagination>.active>span:hover {
  background-color: #000000;
  border-color: #FE2E64;
}

.pagination>li>a:focus,
.pagination>li>a:hover,
.pagination>li>span:focus,
.pagination>li>span:hover {
  color: #FE2E64;
}

.pagination>li>a,
.pagination>li>span {
  color: #FE2E64;
}

#article-content-wrapper>.header {
  border-top: 2px solid #f69f00;
}

#article-reply-area #reply-real-area .reply>.reply-header>.reply-writer.logged,
#article-reply-area #reply-best-area .reply>.reply-header>.reply-writer.logged {
  color: #FE2E64;
}

#article-info>h2 {
  font-weight: bold;
}

#article-info>h2>span.category {
  color: #000000 !important;
}

#article-reply-area>.header h5 {
  color: #000000;
}

#main .menu-wrapper>a {
  padding: 0.5em 1.4em 0.5em 0.7em !important;
}

a {
  color: #000000;
}

span.a-badge i.fa.fa-info-circle {
  color: #FF0040;
}

/* footer */

#article-list>.article-list-row {
  border-right: none;
}

#article-list #article-list-menu {
  box-sizing: border-box;
  width: unset;
  margin: 20px;
}

#article-list #boardSearchForm {
  padding-bottom: 20px;
  height: unset;
}

/* .btn-primary { */
/*   background: #9028e8 !important; */
/* } */
.replywrite{
	background:#FF9C00;
}
.replywrite:hover{
	background:#E00546;
}
</style>        

<script type="text/javascript">
  window._taboola = window._taboola || [];
    _taboola.push({article:'auto'});
    !function (e, f, u, i) {
    if (!document.getElementById(i)){
      e.async = 1;
      e.src = u;
      e.id = i;
      f.parentNode.insertBefore(e, f);
    }
  }(document.createElement('script'),
  document.getElementsByTagName('script')[0],
  '//cdn.taboola.com/libtrc/tgdkr/loader.js',
  'tb_loader_script');
  if(window.performance && typeof window.performance.mark == 'function')
    {window.performance.mark('tbl_ic');}
</script>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-71349615-1', 'auto');
  ga('send', 'pageview');
    ga('set', 'userId', '141152954');
  
</script>
<!--  end -->

 <script>
  $(document).ready(function() {
	$('#btLike').on('click', like); 
	$('#btDelete').on('click', deleteBoard);
	$('#btUpdate').on('click', updateBoard); 

});  
  
  
  //추천하기
  function like (){
	  $.ajax({
		url : 'like',
		data : {board_num : ${board.board_num}},
		dataType : 'text',
		success : function(n){
			$('#likeDiv').html(n);
		},
		error : function(e) {
			alert("추천 실패");
		}
	  });
  	}
  
  //삭제하기
  function deleteBoard(){
	  
	  if(confirm('삭제하시겠습니꽈?')){
		  location.href = 'deleteBoard?board_num=${board.board_num}';
		
	  }
  }
  
  //수정
  function updateBoard(){

	  location.href = 'update?board_num=${board.board_num}';
  }
  
  
  function reply(){
	 var re = document.getElementById('reply_contents');
	 	if(re.value == ''){
	 		alert('댓글을 입력하시오.');
	 		return false;
	 	}
	 	return true;
  }
</script> 



</head>
<body>
		<div>
			<header class="codrops-header">
					<div class="codrops-top clearfix">
						<div class="titlenaranhi" style="margin-right: -100px;position: absolute;">
							<h1><a href="homeButton" class="mainTitle" style="color: aliceblue;font-size:30px;padding-left:20px; text-decoration: none;">本ーE</a></h1>
							<span><a class="codrops-icon codrops-icon-prev" href="homeButton" style="font-size:10px;padding-left:20px;text-decoration: none;">Home</a></span>
						</div>
						<div>
							<span class="right"><a class="codrops-icon codrops-icon-prev" href="logOut" style="text-decoration: none;"><span style="font-size:17px;">Log Out</span></a></span>
							<span class="right"><a class="codrops-icon codrops-icon-prev" href="cartForm" style="text-decoration: none;"><span style="font-size:17px;">My cart</span></a></span>
						</div>
					</div>
					<div class="logo"></div>
					<h1>READ<span>for <font style="font-size:30px;color:#FC7D01;font-weight:bold;">${loginId}</font><font style="font-size:30px;color:#fdff00;">様</font></span></h1>
			</header>
		</div>


<!-- --------------------------------------------------------------------------메뉴바 입니다. start------------------------------------------------------ -->
     <!--  <div class="container">
        <div class="row">
          <div class="col-xs-4">
            <a href="/"><img src="https://d4fodtu7cqfym.cloudfront.net/images/logo_new.png" alt=""></a>
          </div>
          <div class="col-xs-8" align="right">
            <form action="/search" method="get" id="right-search-form">
              <input type="text" placeholder="트게더 검색" value="" id="right-search-input" name="q">
              <button type="submit" id="right-search-btn"><i class="fa fa-search"></i></button>
            </form>
          </div>
        </div>
      </div>

      <div id="header-bar" class="container">
        <div class="row">
          <div id="header-menu-left" class="col-xs-2" align="left">
            <div class="dropdown">
              <a href="#" class="dropdown-toggle" id="latestDropdown" data-toggle="dropdown">
                <i class="fa fa-clock-o"></i> 최근<span class="caret"></span>
              </a>
              <ul class="dropdown-menu" aria-labelledby="latestDropdown" id="latestDropdownMenu"></ul>
            </div>
            <div class="dropdown">
              <a href="#" class="dropdown-toggle" id="favoriteDropdown" data-toggle="dropdown">
                <i class="fa fa-star"></i> <span class="caret"></span>
              </a>
              <ul class="dropdown-menu" aria-labelledby="favoriteDropdown" id="favoriteDropdownMenu"></ul>
            </div>
            <div class="dropdown">
              <a href="#" class="dropdown-toggle" id="playgroundDropdown" data-toggle="dropdown">
                <i class="fa fa-smile-o"></i> <span class="caret"></span>
              </a>
              <ul class="dropdown-menu" aria-labelledby="playgroundDropdown" id="playgroundDropdownMenu">
                <li><a href="/play/attendance">출석체크</a></li>
                <li><a href="/play/ad">전광판</a></li>
                <li><a href="/play/iconshop">아이콘샵</a></li>
                <li><a href="/play/giveaway">포인트경품</a></li>
                <li class="divider"></li>
                <li><a href="/play/chatutil">채팅툴</a></li>
              </ul>
            </div>
          </div>

          <div id="header-top-notice" class="col-xs-8" align="center">
            &nbsp;
          </div>

          <div id="header-menu-right" class="col-xs-2" align="right">
            <div class="dropdown">
              <a href="/note/lists" class="dropdown-toggle">
                                <span class="badge badge-pill badge-danger hide" id="note-notification-badge">0</span>
                                
                <i class="fa fa-envelope-o"></i> <span class="caret"></span>
              </a>
            </div>
            <div class="dropdown">
              <a href="#" class="dropdown-toggle" id="userDropdown" data-toggle="dropdown">
                                <span class="badge badge-pill badge-danger hide" id="notification-badge">0</span>
                <img src="https://static-cdn.jtvnw.net/user-default-pictures/4cbf10f1-bb9f-4f57-90e1-15bf06cfe6f5-profile_image-300x300.jpg" alt="" class="profile-img">
                 <span class="caret"></span></a>
              </a>
              <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                              <li><a href="/notify/lists">새로운 알림 (<strong id="notification-badge-ea">0</strong>개)</a></li>
                <li><a href="#"><strong>모카엉덩이</strong> <small>ilovesom2</small></a></li>
                <li><a href="/member/point"><strong>51</strong> 포인트</a></li>
                <li class="divider"></li>
                                <li><a href="/member/config">설정</a></li>
                <li><a href="/member/mylist">글 보관함</a></li>
                <li><a href="/member/badge">아이콘 보관함</a></li>
                <li><a href="/member/logout">로그아웃</a></li>
                                            </ul>
            </div>
          </div>
        </div>
      </div> -->
<!-- --------------------------------------------------------------------------메뉴바 입니다. end------------------------------------------------------ -->



<!-- --------------------------------------------------------------------------보드 입니다. start------------------------------------------------------ -->
<!-- tgd_board_list -->
<ins class="adsbygoogle"
     style="display:block;width:870px;height:90px;margin:0 auto;"
     data-ad-client="ca-pub-5807968391783575"
     data-ad-slot="2366847732"></ins>
<div style="border: 1px solid #f69f00;margin-top:5%;margin-left: 11%;margin-right: 11%;">
	<div id="article-info" style="border-top: 4px solid #F3BA6F;">
	    <h2>
			<span class="category" style="color:#62ad64"><font style="color:#f69f00">FORUM</font></span></h2>
	    <img src="https://static-cdn.jtvnw.net/user-default-pictures/4cbf10f1-bb9f-4f57-90e1-15bf06cfe6f5-profile_image-300x300.jpg" alt="" class="img-rounded article-profile-img">
	    <div id="article-info-writer">
	         <strong>${loginId}</strong>様
	    </div>
	</div>

<div id="article-content-wrapper">
    <div class="header" style="">
    		<font style="font-size:1.9em; font-weight:bold;">${board.board_title}</font>
            <span id="article-views" style="text-align: right;">
            	<img src="./readFolder/images/like.png" style="width:13%;height:42px;padding-bottom:6px;"><font style="padding-top:1px;padding-right: 3px;padding-left: 2%;border-bottom-color: rgb(240, 167, 2);border-bottom-style: solid;border-bottom-width: 3px;" id="likeDiv">${board.board_like}</font>
            </span>
        <div class="clearfix"></div>
    </div>

    <div id="article-content" class="fr-view" data-id="28425775" data-last-cpage="1">
		<font style="font-size:18px;">${board.board_contents}</font>
	</div>

    <div class="vote-area">
        <button type="button" id = "btLike" class="btn btn-outline-success vote-btn"><img src="./readFolder/images/like.png" style="width:20px;height:20px;padding-bottom: 3px;">추천<span id="likeDiv"></span></button>    </div>

    <div class="footer" style="margin-right: 2%;margin-left: 2%;border-top: 4px solid #F3BA6F;">
<!--         <a href="/1am_shin" class="btn btn-sm btn-default"><i class="fa fa-list"></i> </a> -->
<!--         <button type="button" id="reportArticleBtn" tabindex="-1" class="btn btn-sm btn-outline-danger"><i class="fa fa-bell-slash-o"></i> </button> -->
<!--         <a href="/board/delete/28425775" class="btn btn-sm btn-default pull-right"><i class="fa fa-trash"></i> </a> -->
<!--         <a href="/board/modify/28425775" class="btn btn-sm btn-default pull-right mr-1"><i class="fa fa-pencil"></i> </a> -->
<!-- 		<a href="/board/scrap/28425775" class="btn btn-sm btn-default pull-right mr-1 scrap-btn"><i class="fa fa-plus"></i> </a> -->
	</div>
</div>

<!-- <div id="taboola-below-article-text-links" style="padding: 0 1em;"></div> -->
<!-- <div id="taboola-below-article-text-links-b" style="padding: 0 1em;"></div> -->
	
	
<!-- 	<div onclick = "list()">Reply목록보기</div> -->
<!-- ------------------------------------------------------------------------댓글 띄워지는 부분 START------------------------------------------------------------------------  -->
		
		<div id="reply-real-area" style="margin-right: 3%;margin-left: 3%;margin-bottom: 2%;">
		<c:forEach var = "Reply" items = "${list_rep}">
		<div class="reply d-0" id="comment-29955264" data-id="29955264">
			<div class="reply-header" style="background: #f7f7f7;border-bottom: 1px solid #efefef;padding: 0.5em 0.5em;">
				<img class="reply-writer-image img-circle loaded" src="./assets/images/favicon.ico" 
					width="48" height="48" data-was-processed="true" style="width: 2.2em;height: 2.2em;margin-right: 0.44em;float: left;">
					<div class="reply-writer logged" style="color: #BE8D4C;"> 
							<div style="float:left;">
								<font style="color:#BE8D4C; font-size:18px; padding:7px 0px 0px;font-weight:900;">${Reply.person_id}</font>
							</div>
							<div style="float:right;">
								<c:if test = "${sessionScope.loginId == board.person_id}">
								<input  class="replystyle1" id = "btUpdate" type = "button" value = "수정">
								<input class="replystyle2" id = "btDelete" type = "button" value = "삭제">
								</c:if>
							</div>
					</div><small class="code" style="font-size: 12px;float: left;padding-top: 8px;padding-left: 6px;color: #aaa;"></small>
							<div class="reply-menu" style="float: right;padding-top: 6px;font-size: 12px;">
								<a href="/board/comment_vote" data-id="29955264" data-type="up" class="comment-vote-btn" style="color: #BE8D4C;text-decoration: none;cursor: pointer;">
								</a><span class="middot" style="margin: 0 5px;"></span>
								<a href="#" class="re-reply-btn" style="text-decoration: none;color: #BE8D4C;cursor: pointer;">
								</a>
									<span class="middot"style="margin: 0 5px;"></span>
									<span class="time" title="2019-09-05 오전 01:11:13"></span>
									<span class="middot"></span>
							</div>
				<div class="clearfix" style="margin-bottom: 20px;"></div>
					<p>${Reply.reply_contents}</p>
			</div>
		</div>
		</c:forEach>
	</div>

		
<!-- ------------------------------------------------------------------------댓글 띄워지는 부분 END------------------------------------------------------------------------  -->	
<div id="article-reply-area" class="">
    <div class="header" style="border-top: 4px solid #F3BA6F;
    margin-left: 3%;
    margin-right: 3%;
    margin-bottom: -31px;
    border-left: 1px solid #f69f00;
    border-right: 1px solid #f69f00;
    border-bottom: 1px solid #f69f00;">
        <h5>
            <img src="./readFolder/images/bloodtrail.png" style="width:25px;height:25px;"> 댓글 <span id="totalCommentCount"></span> &nbsp;
        </h5>
    </div>

    <div id="reply-best-area"></div>

    <a href="#" id="viewReplyPrevPageBtn" class="pt-2 pb-2 hide">이전 댓글 더 보기</a>
    <div id="reply-real-area">
        
    </div>
    <a name="lastc"></a>

    <a href="#" id="loadNewCommentsBtn" class="btn btn-sm btn-info invisible" style="margin: 0 15px;">
        <i class="fa fa-refresh"></i> <span>새 댓글</span>
    </a>

      <div id="comment-write-form-area" style="border-bottom: 4px solid #F3BA6F; padding-left:3%;">
        <form action="write" method="POST" id="replyForm" class="mt-2" onsubmit = "return reply();">
            <input type="hidden" id="commentParentId" name="parent_id" value="0">
            <input type="hidden" name="custom_badge" id="custom_badge" value="">

            <div id="commentWriteInfoForm" class="hide mb-2">
                <div class="left"><input type="text" class="form-control" id="commentNickname" maxlength="10" name="nickname" value="" placeholder="닉네임"></div><div class="right">
                <input type="password" class="form-control" id="commentPassword" maxlength="20" name="password" value="" placeholder="비밀번호"></div>
            </div>
            <textarea name="reply_contents" id="reply_contents" rows="4" class="form-control" placeholder="내용을 입력해주세요." 
			            style="border: 1px solid #f69f00; min-width: 1235.81px;max-width: 1235.81px;"></textarea>
			<input type = "hidden" name = "board_num" value = ${board.board_num }>
            <div id="comment-write-button-area">
<!-- 				<button class="btn btn-default pull-left hide btn-sm" tabindex="-1" type="submit" id="btnRereplyCancelBtn">취소</button> -->
                <button class="btn btn-primary pull-right btn-sm replywrite" style="margin: 0.5em; border-radius:12px;margin-right: 2%;" type="submit" >
                	<img src="./readFolder/images/pencil3.png" style="width:24px;height:24px;">
                	<font style="font-size:18px;">WRITE</font>
                </button>
				<button class="btn btn-primary pull-right btn-sm replywrite buttononclick" type="button" 
					 onclick="listreturn()" style="margin: 0.5em; border-radius:12px;width:102px;margin-right: 80%;" >
                <font style="font-size:18px;">LIST</font>
                </button>
                <script>
                	function listreturn() {
                		location.href="boardForm";
                	}
                </script>
                <div class="clearfix"></div>
            </div>
        </form>
    </div>
    </div>
</div>
<!-- <!-- <div> -->
<!--     <div style="padding:0;">
        <div style="border-top: 1px solid #eee; margin-top: 15px; padding-top: 20px; position: relative;">
            <div style="position: absolute; -->
<!-- /*     top: 0%; */ -->
<!-- /*     left: 50%; */ -->
<!-- /*     margin-left: -30px; */ -->
<!-- /*     width: 60px; */ -->
<!-- /*     height: 24px; */ -->
<!-- /*     background: #fff; */ -->
<!-- /*     font-size: .8em; */ -->
<!-- /*     color: #ccc; */ -->
<!-- /*     margin-top: -10px; */ -->
<!--     text-align: center;"></div> -->
<!--             <ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-5807968391783575" data-ad-slot="5331132449" data-ad-format="auto"></ins> -->
<!--         </div> -->
<!--     </div> -->
<!-- </div> --> -->

<script type="text/javascript">
  window._taboola = window._taboola || [];
  _taboola.push({
    mode: 'text-links-a',
    container: 'taboola-below-article-text-links',
    placement: 'Below Article Text Links',
    target_type: 'mix'
  });
  _taboola.push({
    mode: 'organic-text-links-a',
    container: 'taboola-below-article-text-links-b',
    placement: 'Below Article Text Links-b',
    target_type: 'mix'
  });
</script>


<!-- report modal -->
<div class="modal fade" id="reportModal" tabindex="-1" role="dialog" aria-labelledby="reportModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="reportModalLabel">신고하기</h4>
      </div>
      <div class="modal-body">
        <table class="table table-bordered">
          <tr>
            <th width="100">작성자</th>
            <td><span id="reportTarget"></span></td>
          </tr>
          <tr>
            <th>제목</th>
            <td><span id="reportText"></span></td>
          </tr>
        </table>

        <h4>신고사유 선택</h4>
        <label style="display: block;"><input type="radio" name="report_reason" value="1"> 욕설/비하</label>
        <label style="display: block;"><input type="radio" name="report_reason" value="2"> 음란성</label>
        <label style="display: block;"><input type="radio" name="report_reason" value="3"> 게시글/댓글 도배</label>
        <label style="display: block;"><input type="radio" name="report_reason" value="4"> 홍보성 콘텐츠</label>
        <label style="display: block;"><input type="radio" name="report_reason" value="5"> 타인의 개인정보 유포</label>
        <label style="display: block;"><input type="radio" name="report_reason" value="6"> 허위사실 유포</label>
        <label style="display: block;"><input type="radio" name="report_reason" value="7"> 명예훼손 관련</label>
        <label style="display: block;"><input type="radio" name="report_reason" value="8"> 기타</label>
        
        <textarea name="report_desc" cols="30" rows="4" placeholder="신고 사유 설명이 필요하신 경우 작성해주세요." class="form-control"></textarea>

        <p style="margin-top: 8px; color: #999; font-size: 12px;">다수의 신고를 받은 게시물은 숨김처리 될 수 있으며, 해당 글의 작성자는 사이트 이용제한 조치를 받을 수 있습니다. 신고 결과에 대해 별도의 통지/안내를 하지 않으니 이 점 양지하여 주시기 바랍니다.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary" id="reportBtn">신고하기</button>
      </div>
    </div>
  </div>
</div>
<!-- --------------------------------------------------------------------------보드 입니다. end------------------------------------------------------ -->
<!-- --------------------------------------------------------------------------맨밑에 입니다. start------------------------------------------------------ -->
  <div class="footer">
   	  <div class="wrap">
	     <div class="section group">
				<div class="col_1_of_4 span_1_of_4">
						<h4>Information</h4>
						<ul>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Customer Service</a></li>
						</ul>
					</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Why buy from us</h4>
						<ul>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Customer Service</a></li>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>My account</h4>
						<ul>
							<li><a href="contact.html">Sign In</a></li>    <!-- 링크 수정 해야함 -->
							<li><a href="index.html">View Cart</a></li>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Contact</h4>
						<ul>
							<li><span>010-4320-7840</span></li>
							<li><span>010-8335-0698</span></li>
							<li><span>010-8335-0698</span></li>
							<li><span>010-8335-0698</span></li>
						</ul>
						
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<div class="social-icons">
						<h4>SUPPORT</h4>
				   		  <ul>
						      <li><a href="https://www.aladin.co.kr/home/welcome.aspx" target="_blank"><img class="iconkugi" src="./BookForm/images/aladin.png" /></a></li>
						      <li><a href="http://www.kyobobook.co.kr/index.laf?OV_REFFER" target="_blank"><img class="iconkugi" src="./BookForm/images/kyobo.jpg" /></a></li>
						      <li><a href="https://book.naver.com" target="_blank"><img class="iconkugi" src="./BookForm/images/naver.ico" /></a></li>
						      <li><a href="http://www.yes24.com/main/default.aspx" target="_blank"><img class="iconkugi" src="./BookForm/images/yes24.png" /></a></li>
					     </ul>
					     <div class="clear"></div>
	 				</div>
				</div>
			</div>
			 <div class="copy_right">
				<p>Company Name © All rights Reseverd | Design by  <font style="color:#ff8600">Jeon Jae Hyoung</font></p>
		   </div>
        </div>
    </div>	
<!-- --------------------------------------------------------------------------맨밑에 입니다. end------------------------------------------------------ -->

	
	
</body>
</html>