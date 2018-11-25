<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />

    <!-- SNS LINK -->
    <meta property="og:type" content="website" />
    <meta property="og:title" content="" />
    <meta property="og:url" content="" />
    <meta property="og:image" content="" />
    <meta property="og:description" content="" />
    <!--// SNS LINK -->

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="0b92501b-0d87-447c-b011-ba9391ff1167" /><title>한솥도시락</title>

    <link rel="icon" href="assets/images/common/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" type="text/css" href="assets/css/ui.common.css" />
<link rel="stylesheet" type="text/css" href="assets/css/swiper.min.css" />
<!--[if gte IE 9 ]><link rel="stylesheet" href="/assets/css/ui.ie9.css" type="text/css" /><![endif]-->

<style>
    .file_input {
        font-size:45px;
        position:absolute;
        top:0;
        right:0;
        bottom:0;
        left:0;
        margin:0;
        padding:0;
        border:0;
        z-index:-1;
        opacity: 0;
        filter: alpha(opacity=0);
        -ms-filter: "alpha(opacity=0)";
        -khtml-opacity:0;
        -moz-opacity:0;
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
<script type="text/javascript" src="assets/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="assets/js/validation/messages_ko.min.js"></script>
<script type="text/javascript" src="assets/js/validate.js"></script>

<!-- fileupload -->
<script type="text/javascript" src="assets/js/fileupload/jquery.iframe-transport.js"></script>
<script type="text/javascript" src="assets/js/fileupload/jquery.fileupload.js"></script>
<script type="text/javascript" src="assets/js/hansot.common.js"></script>

<!-- naver map api -->
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=1MATn4mHBIsSKNHepOXg&submodules=geocoder"></script>
<!-- moment js api -->
<script type="text/javascript" src="assets/js/moment.js"></script>
<!-- lodash js api -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/lodash@4.17.4/lodash.min.js"></script>

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
</script><script type="text/javascript">
    </script>

    

    <link rel="stylesheet" type="text/css" href="assets/css/ui.main.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/ui.pop.css" />

    <script type="text/javascript" src="assets/js/ui.main.js"></script>

    <script>
    $(function(){
        visualBackground();
    });
    $(window).resize(function() {
        visualBackground();
    });

    function visualBackground(){
        if(window.innerWidth <= 768){
            $(".visual_bg.vi_01").each(function(){
                var url = $(this).data("mobile-url");
               $(this).css('backgroundImage', "url(" + url + ")");
            });
        }else{
            $(".visual_bg.vi_01").each(function(){
                var url = $(this).data("web-url");
                $(this).css('backgroundImage', "url(" + url + ")");
            });
        }
    }
    </script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-111772169-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-111772169-1');
    </script>

    <!-- Global site tag (gtag.js) - AdWords: 864658366 -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=AW-864658366"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'AW-864658366');
    </script>

    <!-- kakao pixcel -->
    <script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
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
        <img height="1" width="1" src="https://www.facebook.com/tr?id=241666853119648&ev=PageView&noscript=1"/>
    </noscript>
    <!-- End Facebook Pixel Code -->

</head>
<% String id = (String)session.getAttribute("id"); %>
<body ontouchstart>
<!-- wrap s -->
<div id="wrap" class="bg_w">
    <!-- inc header s -->
    <!-- header -->
<header id="header">
    <!-- header flex-->
    <div class="hd_flex">
        <div class="area_flex">
        
            <ul>
            <% if(id != null){ %>
            	 <li>
           
                    <%=id %>님 환영합니다.
                </li>
           <%}%>
            <% if(id == null){
            
            %>
                <li>
<<<<<<< HEAD
                    <a href="login.do">�α���</a>
                    </li>
                <li>
                    <a href="join.do">ȸ������</a>
                    </li>
=======
                    <a href="./login.do">로그인</a>
                </li>
                    
                <li>
                    <a href="./join.do">회원가입</a>
               </li>
             <%} %> 
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
                <li class="sns_insta">
                    <a href="https://www.instagram.com/hansot_official/" target="_blank" title="새 창 열림" ><span class="blind">instagram</span></a>
                </li>
                
                <li class="sns_face">
                    <a href="https://www.facebook.com/hansotOfficial/?ref=ts&fref=ts" target="_blank" title="새 창 열림" ><span class="blind">facebook</span></a>
                </li>
                
            </ul>
            
        </div>
    </div>
    <!-- //header flex -->

    <!-- header content -->
    <div class="hd_fixed">
        <div class="hd_content">
            <div class="logo">
<<<<<<< HEAD
                <h1><a href="home.go"><span class="blind">�Ѽ�</span></a></h1>
=======
                <h1><a href="home.jsp"><span class="blind">한솥</span></a></h1>
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
            </div>
            <!-- gnb -->
            <section id="gnb" class="area_gnb mo_version">
                <!-- 모바일 로그인/회원가입 -->
                <div class="m_area_flex">
<<<<<<< HEAD
							<ul>
								<li><a href="login.do">�α���</a></li>
								<li><a href="join.do">ȸ������</a></li>
							</ul>
						</div>
                <!-- //����� �α���/ȸ������ -->
=======
                    <ul>
                        <li>
                            <a href="./login.do">로그인</a>
                            </li>
                        <li>
                            <a href="./join.do">회원가입</a>
                            </li>
                    </ul>
                </div>
                <!-- //모바일 로그인/회원가입 -->
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b

                <div class="gnb_menu">
                    <ul>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">BRAND</a></p>
                            <div class="dp2">
                                <ul>
<<<<<<< HEAD
                                    <li class="active"><a href="story.go">�귣�� ���丮</a></li>
                                    <li><a href="philosophy.go">�귣�� ö��</a></li>
                                    <li><a href="legacy.go">�귣�� ����</a></li>
=======
                                    <li class="active"><a href="./brand/story.jsp">브랜드 스토리</a></li>
                                    <li><a href="./brand/philosophy.jsp">브랜드 철학</a></li>
                                    <li><a href="./brand/legacy.jsp">브랜드 유산</a></li>
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">ESG</a></p>
                            <div class="dp2">
                                <ul>
<<<<<<< HEAD
                                    <li class="active"><a href="esg.go">ESG�濵�̶�?</a></li>
                                    <li><a href="philosophy.go">ȯ�溸ȣ(Environment)</a></li>
                                    <li><a href="social.go">��ȸ����(Social)</a></li>
                                    <li><a href="esg.go">�����濵(Governance)</a></li>
=======
                                    <li class="active"><a href="./brand/esg.jsp">ESG경영이란?</a></li>
                                    <li><a href="./brand/philosophy.jsp">환경보호(Environment)</a></li>
                                    <li><a href="./hansot/social.jsp">사회공헌(Social)</a></li>
                                    <li><a href="./brand/esg.jsp">윤리경영(Governance)</a></li>
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b

                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">MENU</a></p>
                            <div class="dp2">
                                <ul>
<<<<<<< HEAD
                                    <li><a href="menu_list.go">��ü�޴�</a></li>
                                    <li><a href="material.go">����� �̾߱�</a></li>
                                    <li><a href="chancha.go">�����������Ŀ��</a></li>
                                    <li><a href="menu_order.go">��ü �ֹ�</a></li>
=======
                                    <li><a href="./menu/menu_list.jsp">전체메뉴</a></li>
                                    <li><a href="./menu/material.jsp">식재료 이야기</a></li>
                                    <li><a href="./menu/chancha.jsp">페루찬차마요커피</a></li>
                                    <li><a href="./menu/menu_order.jsp">단체 주문</a></li>
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">STORE</a></p>
                            <div class="dp2">
                                <ul>
<<<<<<< HEAD
                                    <li><a href="store_find.go">�ֺ�����ã��</a></li>
=======
                                    <li><a href="./store/store_find.jsp">주변점포찾기</a></li>
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">EVENT</a></p>
                            <div class="dp2">
                                <ul>
<<<<<<< HEAD
                                    <li><a href="event_list.go">�� ���� �̺�Ʈ</a></li>
                                    <li><a href="store_event_list.go">�ű��� �����̺�Ʈ</a></li>
=======
                                    <li><a href="./event/event_list.jsp">이 달의 이벤트</a></li>
                                    <li><a href="./event/store_event_list.jsp">신규점 오픈이벤트</a></li>
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">FRANCHISE</a></p>
                            <div class="dp2">
                                <ul>
<<<<<<< HEAD
                                    <li><a href="hansot_store.go">Why �Ѽ� ������</a></li>
                                    <li><a href="success.go">��������</a></li>
                                    <li><a href="process.go">â����������</a></li>
                                    <li><a href="calc.go">���� â�� ���</a></li>
                                    <li><a href="qna.go">â������</a></li>
                                    <li><a href="briefing.go">â������ȸ ��������û</a></li>
=======
                                    <li><a href="./franchise/hansot_store.jsp">Why 한솥 가맹점</a></li>
                                    <li><a href="./franchise/success.jsp">성공수기</a></li>
                                    <li><a href="./franchise/process.jsp">창업개설절차</a></li>
                                    <li><a href="./franchise/calc.jsp">예상 창업 비용</a></li>
                                    <li><a href="./franchise/qna.jsp">창업문의</a></li>
                                    <li><a href="./franchise/briefing.jsp">창업설명회 일정·신청</a></li>
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">HANSOT</a></p>
                            <div class="dp2">
                                <ul>
<<<<<<< HEAD
                                    <li><a href="promise.go">�Ѽ��� ���</a></li>
                                    <li><a href="vision.go">�Ѽ��� ����</a></li>
                                    <li><a href="history.go">����&amp;����</a></li>
                                    <li><a href="news_list.go">�Ѽ� NEWS</a></li>
                                    <li><a href="location.go">���ô� ��</a></li>
                                    <li><a href="faq_list.go">��������</a></li>
                                    <li class="h_last"><a href="incruit.go">����ä��</a></li>
=======
                                    <li><a href="/hansot/promise.jsp">한솥의 약속</a></li>
                                    <li><a href="/hansot/vision.jsp">한솥의 비전</a></li>
                                    <li><a href="/hansot/history.jsp">연혁&amp;수상</a></li>
                                    <li><a href="/hansot/news_list.jsp">한솥 NEWS</a></li>
                                    <li><a href="/hansot/location.jsp">오시는 길</a></li>
                                    <li><a href="/footer/faq_list.jsp">고객센터</a></li>
                                    <li class="h_last"><a href="/footer/incruit.jsp">인재채용</a></li>
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
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
    <div id="container" class="main_page">
        
<div class="content main">
    <!-- group_order -->
    <section class="main_wrap">
        <!-- main_visual -->
        <div class="main_visual_wrap mo_tr swiper-container">
            <div class="swiper-wrapper">
                <!-- visual01 -->
                <div class="visual_bg vi_01 swiper-slide"
                     data-mobile-url="https://www.hsd.co.kr/images/4a0eaaf7ea794a25b0163d04ced9039020181102033706.jpg" data-web-url="https://www.hsd.co.kr/images/442d1c8edf06454295d988f5452929ee20181102033658.jpg"
                >
                    <a href="https://www.hsd.co.kr/event/event_view/330?pageSize=12&pageNo=1&cate=&_csrf=5a077947-74f7-4107-8154-cdadbee12d41" class="view_blind"><span class="blind">자세히보기</span></a>
                    </div>
                <div class="visual_bg vi_01 swiper-slide"
                     data-mobile-url="https://www.hsd.co.kr/images/9867b5e11e084385aa1e95ba205cd49420181102120449.png" data-web-url="https://www.hsd.co.kr/images/0f001e20a88a4a3384110a36c32afd3320181102072425.jpg"
                >
                    <a href="https://www.hsd.co.kr/event/event_view/328?pageSize=12&pageNo=1&cate=&_csrf=5a077947-74f7-4107-8154-cdadbee12d41" class="view_blind"><span class="blind">자세히보기</span></a>
                    </div>
                <div class="visual_bg vi_01 swiper-slide"
                     data-mobile-url="https://www.hsd.co.kr/images/9dfd2049160f4e8c8cd52046dcdef43a20181101014200.png" data-web-url="https://www.hsd.co.kr/images/0b2983ab96cc4ed2bc46b39e8faf6b9b20181101014155.png"
                >
                    <a href="https://www.hsd.co.kr/event/event_view/329?pageSize=12&pageNo=1&cate=&_csrf=5a077947-74f7-4107-8154-cdadbee12d41" class="view_blind"><span class="blind">자세히보기</span></a>
                    </div>
                <div class="visual_bg vi_01 swiper-slide"
                     data-mobile-url="https://www.hsd.co.kr/images/d1145b55529c4809a5fa70f3a632642820181001084105.jpg" data-web-url="https://www.hsd.co.kr/images/eaf1b5afcd73456593c793172bd1d64d20181001084101.jpg"
                >
                    <a href="https://www.hsd.co.kr/menu/menu_view/159?cate1=2&cate2=28" class="view_blind"><span class="blind">자세히보기</span></a>
                    </div>
                <div class="visual_bg vi_01 swiper-slide"
                     data-mobile-url="https://www.hsd.co.kr/images/c173dc2818fd4a809693e6495770922820180322021857.jpg" data-web-url="https://www.hsd.co.kr/images/1558b495de1e4fcbbc5bf3c2d618c77f20180322021854.jpg"
                >
                    <a href="https://www.hsd.co.kr/franchise/briefing" class="view_blind"><span class="blind">자세히보기</span></a>
                    </div>
                <div class="visual_bg vi_01 swiper-slide"
                     data-mobile-url="https://www.hsd.co.kr/images/e6f137da3b0347308b84f7aa5cde49a920180530060321.jpg" data-web-url="https://www.hsd.co.kr/images/b523770db3e243d6bbdbb7935d0e648d20180530060318.jpg"
                >
                    <a href="https://www.hsd.co.kr/brand/story" class="view_blind"><span class="blind">자세히보기</span></a>
                    </div>
                <!-- //visual01 -->
            </div>
            <!-- Pagination -->
            <div class="pagi_wrap">
                <div class="pagi_cont">
                    <div class="swiper-pagination"></div>
                    <!-- play,stop -->
                    <div class="btn_ps">
                        <a href="javascript:toggleSwiperAutoplay();"><span class="blind">swiper start/stop</span></a>
                    </div>
                    <!-- //play,stop -->
                </div>
            </div>
            <!-- //Pagination -->
        </div>
        <!-- //main_visual -->
        <!-- content01 -->
        <div class="main_cont_01">
            <div class="main_cont_wrap mo_tr">
                <!-- 전체메뉴 -->
                <div class="area_sc first">
                    <a href="menu_list.go" class="sc_link"></a>
                    <figure class="sc_wrap">
                        <span class="sc_img">
<<<<<<< HEAD
                            <img src="assets/images/main/main_img_01.jpg" alt="��ü�޴� �̹���">
=======
                            <img src="/assets/images/main/main_img_01.jpg" alt="전체메뉴 이미지">
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
                        </span>
                        <figcaption>
                            <p class="sc_tit fz_02">
                                <span class="s_block">가격 이상의 가치가 담긴</span>
                                <span class="s_block">다양한 메뉴를 확인해 보세요</span>
                            </p>
                            <span class="sc_txt">한솥 메뉴</span>
                        </figcaption>
                    </figure>
                </div>
                <!-- //전체메뉴 -->
                <!-- 주변점포찾기 -->
                <div class="area_sc">
                    <a href="store_find.go" class="sc_link"></a>
                    <figure class="sc_wrap">
                        <span class="sc_img">
<<<<<<< HEAD
                            <img src="assets/images/main/main_img_02.jpg" alt="�ֺ�����ã�� �̹���">
=======
                            <img src="./assets/images/main/main_img_02.jpg" alt="주변점포찾기 이미지">
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
                        </span>
                        <figcaption>
                            <p class="sc_tit fz_02">
                                <span class="s_block">갓 지은 한끼가 기다리고 있는</span>
                                <span class="s_block">가까운 한솥 매장을 찾아보세요</span>
                            </p>
                            <span class="sc_txt">주변점포찾기</span>
                        </figcaption>
                    </figure>
                </div>
                <!-- //주변점포찾기 -->
            </div>
        </div>
        <!-- //content01 -->
        <!-- content02 -->
        <div class="main_cont_02">
            <div class="main_cont_wrap mo_tr">
                <!-- 한솥 intro -->
                <div class="main_intro">
                    <h2 class="h2_int fz_01">
                        <span class="s_block">가맹점주에게도</span>
                        <span class="s_block">든든한 한솥입니다</span>
                    </h2>
                    <p class="int_tit">
                        <span class="s_block">점주님들의 꿈을 실현시켜 드리기 위해</span>
                        <span class="s_block">가맹점주와 성공까지 동행하는 한솥!</span>
                        <span class="s_block">상담부터 개업까지 모든 희로애락을 함께 합니다.</span>
                    </p>
                </div>
                <!-- //한솥 intro -->
                <div class="to_wrap">
                    <!-- why한솥 가맹점 -->
                    <div class="area_sc first">
                        <a href="hansot_store.go" class="sc_link"></a>
                        <figure class="sc_wrap">
                            <span class="sc_img">
<<<<<<< HEAD
                                <img src="assets/images/main/main_img_03.jpg" alt="why�Ѽ� ������ �̹���">
=======
                                <img src="./assets/images/main/main_img_03.jpg" alt="why한솥 가맹점 이미지">
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
                            </span>
                            <figcaption>
                                <p class="sc_tit fz_02">
                                    <span class="s_block">한솥은 언제나 고객과 점주님들의</span>
                                    <span class="s_block">이익을 먼저 생각합니다</span>
                                </p>
                                <span class="sc_txt">Why 한솥 가맹점</span>
                            </figcaption>
                        </figure>
                    </div>
                    <!-- //why한솥 가맹점 -->
                    <!-- 성공수기 -->
                    <div class="area_sc">
                        <a href="success.go" class="sc_link"></a>
                        <figure class="sc_wrap">
                            <span class="sc_img">
<<<<<<< HEAD
                                <img src="assets/images/main/main_img_04.jpg" alt="�������� �̹���">
=======
                                <img src="/assets/images/main/main_img_04.jpg" alt="성공수기 이미지">
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
                            </span>
                            <figcaption>
                                <p class="sc_tit fz_02">
                                    <span class="s_block">한솥과 함께하는 가맹점주들의</span>
                                    <span class="s_block">성공 스토리입니다</span>
                                </p>
                                <span class="sc_txt">성공수기</span>
                            </figcaption>
                        </figure>
                    </div>
                    <!-- //성공수기 -->
                </div>
            </div>
        </div>
        <!-- //content02 -->
        <!-- content03 -->
        <div class="main_cont_03">
            <!-- full bg -->
            <div class="main_hansot">
                <div class="main_hansot_bg">
                </div>
                <!-- content -->
                <div class="main_cont_wrap">
                    <!-- text -->
                    <div class="main_info mo_version">
                        <h2 class="h2_info fz_01">
                            <span class="s_block">든든한 솥밥을 위해</span>
                            <span class="s_block">한솥이 지키고,</span>
                            <span class="s_block">키워가는 것들</span>
                        </h2>
                        <p class="info_tit">
                            <span class="s_block">한솥은 '따끈한 도시락으로 지역사회에 공헌한다' 라는</span>
                            <span class="s_block">기업이념 아래, 고객 이익을 최우선으로 하며 엄선된</span>
                            <span class="s_block">좋은 식재료만 사용하는 대한민국 외식종합기업 시장을</span>
                            <span class="s_block">리드하는 글로벌 종합외식기업 입니다.</span>
                        </p>
                        <!-- btn -->
                        <div class="btn_wrap btn_info">
<<<<<<< HEAD
                            <span class="btn btn_st04"><a href="philosophy.go" class="c_06">�귣�� ö��</a></span>
=======
                            <span class="btn btn_st04"><a href="/brand/philosophy.jsp" class="c_06">브랜드 철학</a></span>
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
                        </div>
                        <!-- //btn -->
                    </div>
                    <!-- //text -->
                </div>
                <!-- content -->
            </div>
            <!-- //full bg -->
        </div>
        <!-- //content03 -->
        <!-- content04 -->
        <div class="main_cont_04">
            <div class="main_cont_wrap">
                <div class="area_sc">
                    <a href="material.go" class="sc_link"></a>
                    <figure class="sc_wrap">
                        <span class="sc_img">
<<<<<<< HEAD
                            <img src="assets/images/main/main_img_05.jpg" alt="����� �̹���">
=======
                            <img src="/assets/images/main/main_img_05.jpg" alt="식재료 이미지">
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
                        </span>
                        <figcaption>
                            <h2 class="h2_mt fz_01">
                                <span class="s_block">식재료 앞에서는</span>
                                <span class="s_block">한없이</span>
                                <span class="s_block">까탈스럽습니다</span>
                            </h2>
                            <p class="sc_tit">
                                <span class="s_block">맑고 깨끗한 자연 환경속에서 재배된 식재료가</span>
                                <span class="s_block">아니면 한솥이 될 수 없습니다.</span>
                                <span class="s_block">모든 식재료는 고객분들이 안심하고 드실 수 있도록</span>
                                <span class="s_block">엄격한 기준 아래 선별됩니다.</span>
                            </p>
                            <span class="sc_txt">식재료이야기</span>
                        </figcaption>
                    </figure>
                </div>
            </div>
        </div>
        <!-- //content04 -->
    </section>
    <!-- //group_order -->
</div>

<!-- more_cont -->
<div class="conts_more">
    <h2 class="more_tit">더 많은 이야기</h2>
    <ul>
        <li>
            <a href="promise.go" class="more_link"></a>
            <figure>
                <span class="more_img">
<<<<<<< HEAD
                    <img src="assets/images/common/more_hansot.jpg" alt="�Ѽ��� ���" />
=======
                    <img src="/assets/images/common/more_hansot.jpg" alt="한솥의 약속" />
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
                </span>
                <figcaption>
                    <h3 class="h3_tit">한솥의 약속</h3>
                    <h3 class="h3_tit_o">한솥의 약속</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="event_list.go" class="more_link"></a>
            <figure>
                <span class="more_img">
<<<<<<< HEAD
                    <img src="assets/images/common/more_event.jpg" alt="�¶��� �̺�Ʈ" />
=======
                    <img src="/assets/images/common/more_event.jpg" alt="온라인 이벤트" />
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
                </span>
                <figcaption>
                    <h3 class="h3_tit">온라인 이벤트</h3>
                    <h3 class="h3_tit_o">온라인 이벤트</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="news_list.go" class="more_link"></a>
            <figure>
                <span class="more_img">
<<<<<<< HEAD
                    <img src="more_news.go" alt="�Ѽ� NEWS" />
=======
                    <img src="./assets/images/common/more_news.jpg" alt="한솥 NEWS" />
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
                </span>
                <figcaption>
                    <h3 class="h3_tit">한솥 NEWS</h3>
                    <h3 class="h3_tit_o">한솥 NEWS</h3>
                </figcaption>
            </figure>
        </li>
    </ul>
</div>
<!--// more_cont-->
<script type="text/javascript">
    //mainSwiper
    var mainSwiper = new Swiper('.main_visual_wrap.swiper-container', {
        simulateTouch: false,
        pagination: '.swiper-pagination',
        paginationClickable: true,
        loop: true,
        autoplay: 5000,
        autoplayDisableOnInteraction: false
    });

    // Toggle mainSwiper Autoplay
    function toggleSwiperAutoplay() {
        if(mainSwiper.autoplaying) {
            // 중단
            mainSwiper.stopAutoplay();
            $('.btn_ps').addClass('on');
        } else {
            // 시작
            mainSwiper.startAutoplay();
            $('.btn_ps').removeClass('on');
        }
    }
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
<<<<<<< HEAD
                <li class="first_be off"><a href="incruit.go">����ä��</a></li>
                <li class="off"><a href="partners.go">���¾�ü���</a></li>
                <li class="mo_bl"><a href="notice_list.go">��������</a></li>
                <li><a href="faq_list.go">���� ����</a></li>
                <li class="mo_bl"><a href="policy.go"><strong>����������޹�ħ</strong></a></li>
                <li><a href="agreement.go">�̿���</a></li>
=======
                <li class="first_be off"><a href="./footer/incruit.jsp">인재채용</a></li>
                <li class="off"><a href="./footer/partners.jsp">협력업체등록</a></li>
                <li class="mo_bl"><a href="./footer/notice_list.jsp">공지사항</a></li>
                <li><a href="./footer/faq_list.jsp">고객 센터</a></li>
                <li class="mo_bl"><a href="./footer/policy.jsp"><strong>개인정보취급방침</strong></a></li>
                <li><a href="./footer/agreement.jsp">이용약관</a></li>
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
            </ul>
        </div>
        <!--// family goods -->
		<div class="mark_webaward"><p><span class="blind">web award korea 2017 프랜차이즈분야 대상2017</span></p></div><!-- 2018-01-11웹어워드마크 -->
        <!-- info -->
        <div class="ft_info_wrap">
            <!-- pc -->
            <div class="ft_info pc_info">
                <span class="first_be">대표이사  이영덕</span>
                <span>사업자등록번호  214-81-96569</span>
                <span>서울시 강남구 강남대로 318(역삼동) 타워837빌딩 8,9층</span>
                <span>T.  02-585-1114</span>
                <span>F.  02-598-1116</span>
                <span class="first_be">E.  webmaster@hsd.co.kr</span>
                <span>한솥 도시락 고객센터  02-585-1114</span>
                <span>전국창업설명회  1811-0188</span>
                <span>단체주문  1644-3288</span>
            </div>
            <!-- //pc -->
            <!-- mobile -->
            <div class="ft_info mo_info">
                <div class="mo_info_list">
                    <p class="btn_toggle">
                        <a href="#none">한솥 사업자 정보</a>
                    </p>
                    <div class="mo_info_on">
                        <span class="mo_bl">대표이사  이영덕</span>
                        <span>사업자등록번호  214-81-96569</span>
                        <br/>
                        <span class="mo_bl">서울시 강남구 강남대로 318(역삼동) 타워837빌딩 8,9층</span>
                        <br/>
                        <span class="mo_bl">T.  02-585-1114</span>
                        <span>F.  02-598-1116</span>
                        <br/>
                        <span class="mo_bl">E.  webmaster@hsd.co.kr</span>
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

            <p class="copyright">COPYRIGHT<span>&copy;</span>㈜한솥. ALL RIGHTS RESERVED.</p>

            <div class="ft_sns">
                <a href="https://www.instagram.com/hansot_official/" target="_blank" title="새 창 열림" class="sns_insta_02" target="_blank" title="새 창 열림" ><span class="blind">instagram</span></a>
                <a href="https://www.facebook.com/hansotOfficial/?ref=ts&fref=ts" target="_blank" class="sns_face_02" target="_blank" title="새 창 열림" ><span class="blind">facebook</span></a>
            </div>
        </div>
        <!--// info -->
    </div>
</footer>
<!--// footer -->

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-109125197-1"></script>
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