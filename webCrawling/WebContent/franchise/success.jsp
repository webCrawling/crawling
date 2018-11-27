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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="22ae22c2-21e3-4ad4-b776-68a154ffd3bd" /><title>성공수기</title>

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

    

    <link rel="stylesheet" type="text/css" href="assets/css/ui.franchise.css" />

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
<body ontouchstart>
<!-- wrap s -->
<div id="wrap" class="">
    <!-- inc header s -->
    <!-- header -->
<header id="header">
    <!-- header flex-->
    <div class="hd_flex">
        <div class="area_flex">
            <% String id = (String)session.getAttribute("id"); %>
            <ul style="width:300px">
              <% if(id != null && id.equals("admin")){ %>
            	 <li>
           
                   <a href="goAdmin.am"><img src="images/key.png" style="width:15px;">&nbsp;관리자 페이지</a>
                   
                </li>
                
                <li>
                <a href="javascript:location.href='logout.do'" id="logout"/> logout </a>
                </li>
           <%}%>
           
            <% if(id != null && (!id.equals("admin"))){ %>
            	 <li >
           
                    <a href="mypage.go"> <%=id %> 님의 마이페이지</a> 
                    
                </li>
                <li>
                <a href="javascript:location.href='logout.do'" id="logout"/> logout </a>
                </li>
           <%}%>
            <% if(id == null){
            
            %>
                <li>

                    <a href="login.do">로그인</a>
                </li>
                    
                <li>
                    <a href="join.do">회원가입</a>
               </li>
             <%} %> 

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
                <h1><a href="first_home.do"><span class="blind">한솥</span></a></h1>
            </div>
            <!-- gnb -->
            <section id="gnb" class="area_gnb mo_version">
                <!-- 모바일 로그인/회원가입 -->
                <div class="m_area_flex">
                    <ul>
                        <li>
                            <a href="login.do">로그인</a>
                            </li>
                        <li>
                            <a href="join.do">회원가입</a>
                            </li>
                    </ul>
                </div>
                <!-- //모바일 로그인/회원가입 -->

               <div class="gnb_menu">
                    <ul>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">BRAND</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="story.go">브랜드 스토리</a></li>
                                    <li><a href="philosophy.go">브랜드 철학</a></li>
                                    <li><a href="legacy.go">브랜드 유산</a></li>
                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">ESG</a></p>
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
                            <p class="dp1_tit"><a href="#none">MENU</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="menu_list.go">전체메뉴</a></li>
                                    <li><a href="material.go">식재료 이야기</a></li>
                                    <li><a href="chancha.go">페루찬차마요커피</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">STORE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="store_find.go">주변점포찾기</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">EVENT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="event_list.go">이 달의 이벤트</a></li>
                                    <li><a href="store_event_list.go">신규점 오픈이벤트</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">FRANCHISE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="hansot_store.go">Why 한솥 가맹점</a></li>
                                    <li><a href="success.go">성공수기</a></li>
                                    <li><a href="process.go">창업개설절차</a></li>
                                    <li><a href="calc.go">예상 창업 비용</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">HANSOT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="promise.go">한솥의 약속</a></li>
                                    <li><a href="vision.go">한솥의 비전</a></li>
                                    <li><a href="history.go">연혁&amp;수상</a></li>
                                    <li><a href="news_list.go">한솥 NEWS</a></li>
                                    <li><a href="location.go">오시는 길</a></li>
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
        
<div class="content franchise success">
    <section class="success_list">
        <!-- 성공수기 -->
        <div class="suc_wrap">
            <h2 class="h2_tit h2_01">성공수기</h2>
            <div class="suc_cont">
                <!-- 성공수기 intro -->
                <div class="suc_title">
                    <p class="fz_02">
                        <span class="s_block">한솥도시락 20주년 기념</span>
                        <span class="s_block">가맹점주의</span>
                    </p>
                    <p class="fz_02">
                        <span class="s_block">‘나의 성공 스토리’ 공모전</span>
                        <span class="s_block">수상작들입니다</span>
                    </p>
                </div>
                <!-- //성공수기 intro -->
                <!-- list -->
                <div class="suc_list_wrap mo_version">
                    <ul>
                        <li>
                            <p class="suc_prime grand"><span>대상</span></p>
                                <div class="suc_list_cnt">
                                <!-- 지점/제목 -->
                                <div class="suc_list_tit">
                                    <span class="store_tit">배재대앞점</span>
                                    <h3 class="h3_tit fz_02">한솥과 함께 해피엔딩</h3>
                                </div>
                                <!-- //지점/제목 -->
                                <p class="suc_txt">
                                    지난 30년은 참 파란만장했습니다. 계속되는 사업실패, 대장암으로 시한부 판정까지. 제가 다시 일어선 건 한솥과 함께 였습니다. 
대전에 두 지점을 운영하고 있는 지금, 저는 한솥과 함께 해피엔딩을 향해 달리고 있습니다.</p>
                                <!-- img -->
                                <span class="suc_img s_block">
                                    <img src="https://www.hsd.co.kr/images/66a2c273f0ab46f6a89c6352ccb1596d20171019102947.jpg" alt="배재대앞점" />
                                </span>
                                <!-- //img -->
                                <!-- 버튼 -->
                                <div class="btn_wrap">
                                    
                                </div>
                                <!-- //버튼 -->
                                <!-- border_bg -->
                                <span class="bg t_l"></span>
                                <span class="bg t_r"></span>
                                <span class="bg b_l"></span>
                                <span class="bg b_r"></span>
                                <!-- //border_bg -->
                            </div>
                        </li>
                        <li>
                            <p class="suc_prime"><span>최우수상</span></p>
                                <div class="suc_list_cnt">
                                <!-- 지점/제목 -->
                                <div class="suc_list_tit">
                                    <span class="store_tit">울산시청앞점</span>
                                    <h3 class="h3_tit fz_02">제 2의 전성기</h3>
                                </div>
                                <!-- //지점/제목 -->
                                <p class="suc_txt">
                                    나이 서른에 대리점 창업, 아파트 소유 그것이 첫 번째 전성기였습니다. 
하지만 두 번에 걸친 집사람의 심장수술, IMF까지. 우연히 한솥을 만난 뒤, 지금 울산에서 제 2의 전성기를 누리고 있습니다.</p>
                                <!-- img -->
                                <span class="suc_img s_block">
                                    <img src="https://www.hsd.co.kr/images/7fd13ab70a8745b3898e343d35dd096020171019102916.jpg" alt="울산시청앞점" />
                                </span>
                                <!-- //img -->
                                <!-- 버튼 -->
                                <div class="btn_wrap">
                                </div>
                                <!-- //버튼 -->
                                <!-- border_bg -->
                                <span class="bg t_l"></span>
                                <span class="bg t_r"></span>
                                <span class="bg b_l"></span>
                                <span class="bg b_r"></span>
                                <!-- //border_bg -->
                            </div>
                        </li>
                        <li>
                            <p class="suc_prime"><span>최우수상</span></p>
                                <div class="suc_list_cnt">
                                <!-- 지점/제목 -->
                                <div class="suc_list_tit">
                                    <span class="store_tit">파주교하점</span>
                                    <h3 class="h3_tit fz_02">한솥밥 엄마</h3>
                                </div>
                                <!-- //지점/제목 -->
                                <p class="suc_txt">
                                    남편이 회사를 그만 두었습니다. 그리고 운명처럼 한솥을 만났습니다. 
마침 매장 근처에 급식실이 없는 중학교가 생겼고 그 이후, 저는 한솥밥 엄마로 불리고 있습니다. 
15년이 지난 지금, 한솥밥 할머니가 되었어도 행복합니다.</p>
                                <!-- img -->
                                <span class="suc_img s_block">
                                    <img src="https://www.hsd.co.kr/images/1fae0d27c15e4b6688b5a59e7be9a54220171019102904.jpg" alt="파주교하점" />
                                </span>
                                <!-- //img -->
                                <!-- 버튼 -->
                                <div class="btn_wrap">
                                </div>
                                <!-- //버튼 -->
                                <!-- border_bg -->
                                <span class="bg t_l"></span>
                                <span class="bg t_r"></span>
                                <span class="bg b_l"></span>
                                <span class="bg b_r"></span>
                                <!-- //border_bg -->
                            </div>
                        </li>
                        <li>
                            <p class="suc_prime"><span>최우수상</span></p>
                                <div class="suc_list_cnt">
                                <!-- 지점/제목 -->
                                <div class="suc_list_tit">
                                    <span class="store_tit">화명신시가지점</span>
                                    <h3 class="h3_tit fz_02">따뜻한 인생</h3>
                                </div>
                                <!-- //지점/제목 -->
                                <p class="suc_txt">
                                    2006년 겨울, 어느 한솥 사장님의 한 마디가 제 인생을 바꿔놓았습니다.
대기업생활, 편의점창업에 지쳐있던 나에게 한솥도시락 운영을 권하셨던 것입니다. 
그 이후 10년이 지난 지금, 제 인생은 갓 지은 밥처럼 따뜻합니다.</p>
                                <!-- img -->
                                <span class="suc_img s_block">
                                    <img src="https://www.hsd.co.kr/images/cc1461514d4840609471d549b2ed6a6620171019102728.jpg" alt="화명신시가지점" />
                                </span>
                                <!-- //img -->
                                <!-- 버튼 -->
                                <div class="btn_wrap">
                                </div>
                                <!-- //버튼 -->
                                <!-- border_bg -->
                                <span class="bg t_l"></span>
                                <span class="bg t_r"></span>
                                <span class="bg b_l"></span>
                                <span class="bg b_r"></span>
                                <!-- //border_bg -->
                            </div>
                        </li>
                        </ul>
                </div>
                <!-- //list -->
            </div>
        </div>
        <!-- //성공수기 -->
    </section>
</div>

<!-- more_cont -->
<div class="conts_more">
    <h2 class="more_tit">더 많은 이야기</h2>
    <ul>
        <li>
            <a href="story.go" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="assets/images/common/more_story.jpg" alt="브랜드 스토리" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">브랜드 스토리</h3>
                    <h3 class="h3_tit_o">브랜드 스토리</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="philosophy.go" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="assets/images/common/more_philosophy.jpg" alt="브랜드 철학" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">브랜드 철학</h3>
                    <h3 class="h3_tit_o">브랜드 철학</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="legacy.go" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="assets/images/common/more_legacy.jpg" alt="브랜드 유산" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">브랜드 유산</h3>
                    <h3 class="h3_tit_o">브랜드 유산</h3>
                </figcaption>
            </figure>
        </li>
        </ul>
</div>
<!--// more_cont-->

    </div>
    <!--// container e -->

    <!-- inc footer s -->
    <!-- footer -->
<footer id="footer">
    <div class="ft_content mo_version">

        <!-- family goods -->
        <div class="ft_menu">
            <ul>
                <li class="first_be off"><a href="incruit.go">인재채용</a></li>
                <li class="off"><a href="partners.go">협력업체등록</a></li>
                <li class="mo_bl"><a href="notice_list.go">공지사항</a></li>
                <li><a href="faq_list.go">고객 센터</a></li>
                <li class="mo_bl"><a href="policy.go"><strong>개인정보취급방침</strong></a></li>
                <li><a href="agreement.go">이용약관</a></li>

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