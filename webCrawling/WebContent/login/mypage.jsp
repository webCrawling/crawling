<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />

<!-- SNS LINK -->
<meta property="og:type" content="website" />
<meta property="og:title" content="" />
<meta property="og:url" content="" />
<meta property="og:image" content="" />
<meta property="og:description" content="" />
<!--// SNS LINK -->

<meta name="_csrf_parameter" content="_csrf" />
<meta name="_csrf_header" content="X-CSRF-TOKEN" />
<meta name="_csrf" content="2aef3679-65b9-4889-82b4-802dba1e4803" />
<title>한솥도시락 > 내 정보 수정</title>

<link rel="icon" href="assets/images/common/favicon.ico"
	type="image/x-icon" />

<link rel="stylesheet" type="text/css" href="assets/css/ui.common.css" />
<link rel="stylesheet" type="text/css" href="assets/css/swiper.min.css" />
<!--[if gte IE 9 ]><link rel="stylesheet" href="/assets/css/ui.ie9.css" type="text/css" /><![endif]-->

<style>
.file_input {
	font-size: 45px;
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	margin: 0;
	padding: 0;
	border: 0;
	z-index: -1;
	opacity: 0;
	filter: alpha(opacity = 0);
	-ms-filter: "alpha(opacity=0)";
	-khtml-opacity: 0;
	-moz-opacity: 0;
}
</style>

<script type="text/javascript" src="assets/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="assets/js/jquery-ui-1.12.1.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="assets/js/jquery.cookie.js"></script>
<script type="text/javascript" src="assets/js/ui.common.js"></script>
<script type="text/javascript" src="assets/js/swiper.jquery.min.js"></script>
<script type="text/javascript" src="assets/js/TweenMax.min.js"></script>

<script type="text/javascript" src="assets/js/tss.js"></script>
<script type="text/javascript" src="assets/js/tss.util.js"></script>

<!-- validatation check -->
<script type="text/javascript"
	src="assets/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript"
	src="assets/js/validation/messages_ko.min.js"></script>
<script type="text/javascript" src="assets/js/validate.js"></script>

<!-- fileupload -->
<script type="text/javascript"
	src="assets/js/fileupload/jquery.iframe-transport.js"></script>
<script type="text/javascript"
	src="assets/js/fileupload/jquery.fileupload.js"></script>

<script type="text/javascript" src="assets/js/hansot.common.js"></script>

<!-- naver map api -->
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=1MATn4mHBIsSKNHepOXg&submodules=geocoder"></script>

<!-- moment js api -->
<script type="text/javascript" src="assets/js/moment.js"></script>
<!-- lodash js api -->
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/lodash@4.17.4/lodash.min.js"></script>

<script>
    $(function () {
        var token = $("meta[name='_csrf']").attr('content');
        var header = "X-CSRF-TOKEN";
        $(document).ajaxSend(function(event, xhr, options) {
            xhr.setRequestHeader(header, token);
        });
        $(document).ajaxError(function(event, xhr, options) {
            if(xhr.status === 401) {
                console.log(xhr);
                if(tss.util.confirm('로그인이 필요합니다.')) {
                    tss.util.auth();
                }
            }
            if(xhr.status === 500 || xhr.status === 400) {
                console.log("오류가 발생했습니다.");
            }
        });
    });

    
    </script>
<script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-111772169-1');
</script>
<link rel="stylesheet" type="text/css" href="assets/css/ui.join.css" />

<!-- Global site tag (gtag.js) - AdWords: 864658366 -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=AW-864658366"></script>
<script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'AW-864658366');
    </script>

<!-- kakao pixcel -->
<script type="text/javascript" charset="UTF-8"
	src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
        kakaoPixel('5575357302971415199').pageView();
    </script>

<!-- Facebook Pixel Code -->
<script>
        !function(f,b,e,v,n,t,s)
        {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
            n.callMethod.apply(n,arguments):n.queue.push(arguments)};
            if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
            n.queue=[];t=b.createElement(e);t.async=!0;
            t.src=v;s=b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t,s)}(window,document,'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '241666853119648');
        fbq('track', 'PageView');
    </script>
<noscript>
	<img height="1" width="1"
		src="https://www.facebook.com/tr?id=241666853119648&ev=PageView&noscript=1" />
</noscript>
<!-- End Facebook Pixel Code -->

<%String id = (String)session.getAttribute("id"); %>
<%System.out.println(id); %>

<input type="text" value="<%=id%>" id="ids" name="ids"
	style="visibility: hidden"></input>
<script type="text/javascript">

//마이페이지(수정) 코드
function modification(){
	alert('modification()들어옴');
	
	var pass = document.getElementById("orgPassword");
	var modifiedpass = document.getElementById("newPassword");
	var email = document.getElementById("email");
	var phone = document.getElementById("phone");
	
	
	var passQuery = pass.value; //현재 비밀번호 
	var modifiedpassQuery = modifiedpass.value; //새로운 비밀번호
	var emailQuery = email.value; //이메일
	var phoneQuery = phone.value; //폰
	
	
	alert(passQuery+','+modifiedpassQuery+','+emailQuery+','+phoneQuery);
	//FrontController_join으로 url보냄
	window.open ("modification.do?passQuery="+passQuery+"&modifiedpassQuery="+modifiedpassQuery+"&emailQuery="+emailQuery+"&phoneQuery="+phoneQuery,"수정결과",
	"width=300, height=300, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	
}

//마이 페이지에서 회원탈퇴
function memOut(){
	alert('memOut()들어옴');

	var userid = document.getElementById("ids"); 
	var idQuery = userid.value;
	alert(idQuery);
	//FrontController_join으로 아이디값이랑 함께 url보냄
	location.href= "delete.do?idQuery="+idQuery;
	
}
    </script>

</head>
<body ontouchstart>
	<!-- wrap s -->
	<div id="wrap" class="">
		<!-- inc header s -->
		<!-- header -->
		<header id="header">
			<!-- header flex-->
			<div class="hd_flex">
				<div class="area_flex">
					<ul>
						<li><a href="logout.do">로그아웃</a></li>
						<li><a href="mypage.go">마이페이지</a></li>
						<li class="sns_insta"><a
							href="https://www.instagram.com/hansot_official/" target="_blank"
							title="새 창 열림"><span class="blind">instagram</span></a></li>
						<li class="sns_face"><a
							href="https://www.facebook.com/hansotOfficial/?ref=ts&fref=ts"
							target="_blank" title="새 창 열림"><span class="blind">facebook</span></a>
						</li>
					</ul>
				</div>
			</div>
			<!-- //header flex -->

			<!-- header content -->
			<div class="hd_fixed">
				<div class="hd_content">
					<div class="logo">
						<h1>
							<a href="home.go"><span class="blind">한솥</span></a>
						</h1>
					</div>
					<!-- gnb -->
					<section id="gnb" class="area_gnb mo_version">
						<!-- 모바일 로그인/회원가입 -->
						<div class="m_area_flex">
							<ul>
								<li><a href="logout.do">로그아웃</a></li>
								<li><a href="mypage.go">마이페이지</a></li>
							</ul>
						</div>
						<!-- //모바일 로그인/회원가입 -->

						<div class="gnb_menu">
							<ul>
								<li class="dp1">
									<p class="dp1_tit">
										<a href="#none">BRAND</a>
									</p>
									<div class="dp2">
										<ul>
											<li class="active"><a href="story.go">브랜드 스토리</a></li>
											<li><a href="philosophy.go">브랜드 철학</a></li>
											<li><a href="legacy.go">브랜드 유산</a></li>
										</ul>
									</div>
								</li>
								<li class="dp1">
									<p class="dp1_tit">
										<a href="#none">ESG</a>
									</p>
									<div class="dp2">
										<ul>
											<li class="active"><a href="esg.go">ESG경영이란?</a></li>
											<li><a href="philosophy.go">환경보호(Environment)</a></li>
											<li><a href="social.go">사회공헌(Social)</a></li>
											<li><a href="esg.go">윤리경영(Governance)</a></li>

										</ul>
									</div>
								</li>
								<li class="dp1">
									<p class="dp1_tit">
										<a href="#none">MENU</a>
									</p>
									<div class="dp2">
										<ul>
											<li><a href="menu_list.go">전체메뉴</a></li>
											<li><a href="material.go">식재료 이야기</a></li>
											<li><a href="chancha.go">페루찬차마요커피</a></li>
											<li><a href="/menu/menu_order">단체 주문</a></li>
										</ul>
									</div>
								</li>
								<li class="dp1">
									<p class="dp1_tit">
										<a href="#none">STORE</a>
									</p>
									<div class="dp2">
										<ul>
											<li><a href="store_find.go">주변점포찾기</a></li>
										</ul>
									</div>
								</li>
								<li class="dp1">
									<p class="dp1_tit">
										<a href="#none">EVENT</a>
									</p>
									<div class="dp2">
										<ul>
											<li><a href="event_list.go">이 달의 이벤트</a></li>
											<li><a href="store_event_list.go">신규점 오픈이벤트</a></li>
										</ul>
									</div>
								</li>
								<li class="dp1">
									<p class="dp1_tit">
										<a href="#none">FRANCHISE</a>
									</p>
									<div class="dp2">
										<ul>
											<li><a href="hansot_store.go">Why 한솥 가맹점</a></li>
											<li><a href="success.go">성공수기</a></li>
											<li><a href="process.go">창업개설절차</a></li>
											<li><a href="calc.go">예상 창업 비용</a></li>
											<li><a href="qna.go">창업문의</a></li>
											<li><a href="briefing.go">창업설명회 일정·신청</a></li>
										</ul>
									</div>
								</li>
								<li class="dp1">
									<p class="dp1_tit">
										<a href="#none">HANSOT</a>
									</p>
									<div class="dp2">
										<ul>
											<li><a href="promise.go">한솥의 약속</a></li>
											<li><a href="vision.go">한솥의 비전</a></li>
											<li><a href="history.go">연혁&amp;수상</a></li>
											<li><a href="news_list.go">한솥 NEWS</a></li>
											<li><a href="location.go">오시는 길</a></li>
											<li><a href="faq_list.go">고객센터</a></li>
											<li class="h_last"><a href="incruit.go">인재채용</a></li>
										</ul>
									</div>
								</li>
							</ul>
						</div>
					</section>
					<!--// gnb -->
					<!-- pc:bg -->
					<div class="bg_layer"></div>
					<!-- //pc:bg -->
					<!-- mobile_btn -->
					<div class="mobile_menu_btn">
						<div class="hamburger" id="hamburger-6">
							<span class="line"></span> 
							<span class="line"></span> 
							<span class="line"></span>
						</div>
					</div>
					<!-- //mobile_btn -->
				</div>
				<!--// header content -->
			</div>
		</header>
		<!--// header -->

		<!--// inc header e -->

		<!-- popup -->
		<!-- container s -->
		<div id="container" class="sub_page">

			<div class="content join">
				<section class="modify mo_version">
					<!-- 내 정보 수정 -->
					<div class="join_step_wrap tab_st01">
						<h2 class="h2_tit h2_01">내정보 수정</h2>
						<div class="tab_wrap">
							<ul class="tab_menu col_02">
								<li><a href="personalOrder.go">내 주문 내역</a></li>
								<li class="active"><a href="#none">내 정보 수정</a></li>
							</ul>
						</div>

						<div class="join_step_cont cont_st01">
						
						
						<!-- join_left -->
							<div class="join_tit">
								<h3 class="h3_tit blind">내 정보</h3>
								<!-- pc -->
								<p class="pc_s_block">
									<span class="s_block"><em class="emphasis username"><%=id %></em>님,</span>
									<span class="s_block">안녕하세요.
								</p>
								<!-- //pc -->
								
							</div>
							<!-- //join_left -->



							<!-- join_right -->
							<div class="join_sub">
								<!-- 개인 정보 변경 -->
								<form id="modifyForm" name="modifyForm" action="/join/modify"
									method="post">
									<div class="join_form">
										<h4 class="h4_tit">개인 정보 변경</h4>
										<!-- 비밀번호 -->
										<div class="in_box in_pw">
											<dl class="in_box_th">
												<dt>비밀번호</dt>
												<dd>
													<span class="form text"> <input type="password"
														id="orgPassword" name="orgPassword"> <label
														for="orgPassword">현재 비밀번호를 입력해주세요</label>
													</span> <span class="form text"> <input type="password"
														id="newPassword" name="newPassword"> <label
														for="newPassword">새 비밀번호를 입력해주세요</label>
													</span> <span class="form text"> <input type="password"
														id="newPasswordRe" name="newPasswordRe"> <label
														for="newPasswordRe">새 비밀번호를 한번 더 입력해주세요</label>
													</span>
													<p class="result_comment true pwResultTrue"
														style="display: none;">비밀번호가 일치합니다</p>
													<p class="result_comment false pwResultFalse"
														style="display: none;">비밀번호가 일치하지 않습니다.</p>
												</dd>
											</dl>
											<!-- 캡션 -->
											<p class="caption">영문(대소문자 구별),숫자,특수문자 8자이상</p>
											<!-- //캡션 -->
										</div>
										<!-- //비밀번호 -->
										<!-- 이메일 -->
										<div class="in_box">
											<dl class="in_box_th">
												<dt>이메일</dt>
												<dd>
													<span class="form text"> <input type="text"
														id="email" name="email" style="ime-mode: active" /> <label
														for="email">이메일을 입력해주세요</label>
													</span>
												</dd>
											</dl>
										</div>
										<!-- //이메일 -->
										<!-- 휴대폰 -->
										<div class="in_box">
											<dl class="in_box_th">
												<dt>휴대폰</dt>
												<dd>
													<span class="form text"> <input type="text"
														id="phone" name="phone" style="ime-mode: active" /> <label
														for="phone">핸드폰 번호를 입력해주세요</label>
													</span>
												</dd>
											</dl>
										</div>
										<!-- //휴대폰 -->
									</div>
									<!-- //개인 정보 변경 -->
									<!-- 광고성 정보 수신동의 -->
									<div class="ad_wrap">
										<h4 class="h4_tit">광고성 정보 수신 동의</h4>
										<p class="ad_txt">수신 동의하시고 한솥 도시락의 다양한 혜택과 이벤트 소식을 받아보세요.</p>
										<span class="form checkbox"> <input type="checkbox"
											id="fck_email_agree" name="email_reception_flag" value="Y" />
											<label for="fck_email_agree">온라인 사이트 이메일 수신 동의</label> <em
											class="txt_select">(선택)</em>
										</span> <span class="form checkbox"> <input type="checkbox"
											id="fck_letter_agree" name="sms_reception_flag" value="Y" />
											<label for="fck_letter_agree">온라인 사이트 문자 수신 동의</label> <em
											class="txt_select">(선택)</em>
										</span>
									</div>
									<!-- //광고성 정보 수신동의 -->

									<!-- btn -->
									<div class="modify_btn_wrap">
										<!-- 탈퇴btn -->
										<div class="btn_wrap fl_l">
											<span class="btn btn_st04"><a href="#none"
												class="c_04" onclick="memOut()">회원탈퇴</a></span>
										</div>
										<!-- //탈퇴btn -->
										<!-- btn -->
										<div class="btn_wrap col_02 fl_r">
											<span class="btn btn_st03"><a href="#none"
												onclick="location.href='/';" class="c_03">취소</a></span> <span
												class="btn btn_st03"><a href="#none"
												onclick="modification()" class="active c_01">수정</a></span>
										</div>
										<!--// btn -->
									</div>
									<!-- //btn -->
									<div>
										<input type="hidden" name="_csrf"
											value="2aef3679-65b9-4889-82b4-802dba1e4803" />
									</div>
								</form>
							</div>
							<!-- //join_right -->
						</div>
					</div>
					<!-- //내 정보 수정 -->
				</section>
			</div>
			
			<script type="text/javascript" src="assets/js/join.js"></script>
			<script type="text/javascript">
    $(function(){
        $.validator.addMethod("equalPassword", function(value, element) {
            var orgPassword = $("#orgPassword").val();
            if(orgPassword && orgPassword.length > 0) {
                var isSuccess = false;
                $.ajax({
                    type: 'POST',
                    url: "/api/member/current",
                    headers: {
                        Accept : "application/json; charset=utf-8",
                        "Content-Type": "application/json; charset=utf-8"
                    },
                    async: false,
                    data: JSON.stringify({ password: value }),
                    success: function(data){
                        isSuccess = data;
                    }
                });
                return isSuccess;
            } else {
                return true;
            }
        }, '');

        // validate & submit
        $('#modifyForm').validate({
            rules: {
                orgPassword: {
                    required: true,
                    equalPassword : true
                },
                newPassword: {
                    chkPassword : true
                },
                newPasswordRe: {
                    required: function(element){
                        return $("#newPassword").val() != "";
                    },
                    equalTo: "#newPassword"
                },
                email: {
                    required: true,
                    email: true
                },
                phone: {
                    required: true
                }
            },
            messages: {
                orgPassword: {
                    required: "현재 비밀번호를 입력해 주세요.",
                    equalPassword: "현재 비밀번호가 일치하지 않습니다."
                },
                newPassword: {
                    chkPassword : "비밀번호는 영문(대소문자 구별), 숫자, 특수문자의 조합으로 8자~16자로 입력해 주세요."
                },
                newPasswordRe: {
                    required: "새 비밀번호를 다시한번 입력해 주세요.",
                    equalTo: "새로 설정하실 비밀번호 정보가 일치하지 않습니다. 다시 확인해 주세요."
                },
                email: {
                    required: "이메일을 입력해 주세요.",
                    email: "이메일을 정확히 입력해 주세요."
                },
                phone: {
                    required: "휴대폰번호 인증이 필요합니다."
                }
            },
            submitHandler : function(form){
                $.ajax({
                    type: 'PUT',
                    url: "/api/member/current",
                    headers: {
                        Accept : "application/json; charset=utf-8",
                        "Content-Type": "application/json; charset=utf-8"
                    },
                    data: JSON.stringify(tss.util.serializeObject($(form)))
                }).done(function(data) {
                    tss.util.alert("정보 변경이 완료되었습니다.");
                    location.reload();
                }).fail(function() {
                    tss.util.alert("일시적인 오류가 발생했습니다.\n화면을 새로고침 한 이후에 다시 시도해 주세요.");
                });
            }
        });
    });
</script>


		</div>
		<!--// container e -->

		<!-- inc footer s -->
		<!-- footer -->
		<footer id="footer">
			<div class="ft_content mo_version">

				<!-- family goods -->
				<div class="ft_menu">
					<ul>
						<li class="first_be off"><a href="/footer/incruit">인재채용</a></li>
						<li class="off"><a href="/footer/partners">협력업체등록</a></li>
						<li class="mo_bl"><a href="/footer/notice_list">공지사항</a></li>
						<li><a href="/footer/faq_list">고객 센터</a></li>
						<li class="mo_bl"><a href="/footer/policy"><strong>개인정보취급방침</strong></a></li>
						<li><a href="/footer/agreement">이용약관</a></li>
					</ul>
				</div>
				<!--// family goods -->
				<div class="mark_webaward">
					<p>
						<span class="blind">web award korea 2017 프랜차이즈분야 대상2017</span>
					</p>
				</div>
				<!-- 2018-01-11웹어워드마크 -->
				<!-- info -->
				<div class="ft_info_wrap">
					<!-- pc -->
					<div class="ft_info pc_info">
						<span class="first_be">대표이사 이영덕</span> <span>사업자등록번호
							214-81-96569</span> <span>서울시 강남구 강남대로 318(역삼동) 타워837빌딩 8,9층</span> <span>T.
							02-585-1114</span> <span>F. 02-598-1116</span> <span class="first_be">E.
							webmaster@hsd.co.kr</span> <span>한솥 도시락 고객센터 02-585-1114</span> <span>전국창업설명회
							1811-0188</span> <span>단체주문 1644-3288</span>
					</div>
					<!-- //pc -->
					<!-- mobile -->
					<div class="ft_info mo_info">
						<div class="mo_info_list">
							<p class="btn_toggle">
								<a href="#none">한솥 사업자 정보</a>
							</p>
							<div class="mo_info_on">
								<span class="mo_bl">대표이사 이영덕</span> <span>사업자등록번호
									214-81-96569</span> <br /> <span class="mo_bl">서울시 강남구 강남대로
									318(역삼동) 타워837빌딩 8,9층</span> <br /> <span class="mo_bl">T.
									02-585-1114</span> <span>F. 02-598-1116</span> <br /> <span
									class="mo_bl">E. webmaster@hsd.co.kr</span>
								<div class="mo_info_call">
									<dl>
										<dt>한솥 고객센터</dt>
										<dd>02-585-1114</dd>
									</dl>
									<dl>
										<dt>전국창업설명회</dt>
										<dd>1811-0188</dd>
									</dl>
									<dl>
										<dt>단체주문</dt>
										<dd>1644-3288</dd>
									</dl>
								</div>
							</div>
						</div>
					</div>
					<!-- //mobile -->

					<p class="copyright">
						COPYRIGHT<span>&copy;</span>㈜한솥. ALL RIGHTS RESERVED.
					</p>

					<div class="ft_sns">
						<a href="https://www.instagram.com/hansot_official/"
							target="_blank" title="새 창 열림" class="sns_insta_02"
							target="_blank" title="새 창 열림"><span class="blind">instagram</span></a>
						<a href="https://www.facebook.com/hansotOfficial/?ref=ts&fref=ts"
							target="_blank" class="sns_face_02" target="_blank"
							title="새 창 열림"><span class="blind">facebook</span></a>
					</div>
				</div>
				<!--// info -->
			</div>
		</footer>
		<!--// footer -->

		<script async
			src="https://www.googletagmanager.com/gtag/js?id=UA-109125197-1"></script>
		<script>
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());

            gtag('config', 'UA-109125197-1');
        </script>
		<!--// inc footer e -->

	</div>
	<!--// wrap e -->
</body>
</html>