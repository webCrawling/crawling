<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="3a1f9029-2dc0-42ff-bbc3-227a8384a395" /><title>한솥도시락 > 로그인</title>
    
    <link rel="icon" href="../assets/images/common/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" type="text/css" href="../assets/css/ui.common.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/swiper.min.css" />
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

<script type="text/javascript" src="../assets/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="../assets/js/jquery-ui-1.12.1.min.js"></script>
<script type="text/javascript" src="../assets/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../assets/js/jquery.cookie.js"></script>
<script type="text/javascript" src="../assets/js/ui.common.js"></script>
<script type="text/javascript" src="../assets/js/swiper.jquery.min.js"></script>
<script type="text/javascript" src="../assets/js/TweenMax.min.js"></script>

<script type="text/javascript" src="../assets/js/tss.js"></script>
<script type="text/javascript" src="../assets/js/tss.util.js"></script>

<!-- validatation check -->
<script type="text/javascript" src="../assets/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="../assets/js/validation/messages_ko.min.js"></script>
<script type="text/javascript" src="../assets/js/validate.js"></script>

<!-- fileupload -->
<script type="text/javascript" src="../assets/js/fileupload/jquery.iframe-transport.js"></script>
<script type="text/javascript" src="../assets/js/fileupload/jquery.fileupload.js"></script>

<script type="text/javascript" src="../assets/js/hansot.common.js"></script>

<!-- naver map api -->
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=1MATn4mHBIsSKNHepOXg&submodules=geocoder"></script>

<!-- moment js api -->
<script type="text/javascript" src="../assets/js/moment.js"></script>
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

    

    <link rel="stylesheet" type="text/css" href="../assets/css/ui.login.css" />

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
            <ul>
                <li>
                    <a href="../login/login.jsp">로그인</a>
                    </li>
                <li>
                    <a href="../join/join1.jsp">회원가입</a>
                    </li>
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
                <h1><a href="/"><span class="blind">한솥</span></a></h1>
            </div>
            
            <!-- gnb -->
            <section id="gnb" class="area_gnb mo_version">
                <!-- 모바일 로그인/회원가입 -->
                <div class="m_area_flex">
                    <ul>
                        <li>
                            <a href="./login.jsp">로그인</a>
                            </li>
                        <li>
                            <a href="../join/join.jsp">회원가입</a>
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
                                    <li class="active"><a href="../brand/story.jsp">브랜드 스토리</a></li>
                                    <li><a href="../brand/philosophy.jsp">브랜드 철학</a></li>
                                    <li><a href="../brand/legacy.jsp">브랜드 유산</a></li>
                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">ESG</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="../brand/esg.jsp">ESG경영이란?</a></li>
                                    <li><a href="../brand/philosophy.jsp">환경보호(Environment)</a></li>
                                    <li><a href="../hansot/social.jsp">사회공헌(Social)</a></li>
                                    <li><a href="../brand/esg.jsp">윤리경영(Governance)</a></li>

                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">MENU</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../menu/menu_list.jsp">전체메뉴</a></li>
                                    <li><a href="../menu/material.jsp">식재료 이야기</a></li>
                                    <li><a href="../menu/chancha.jsp">페루찬차마요커피</a></li>
                                    <li><a href="../menu/menu_order.jsp">단체 주문</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">STORE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../store/store_find.jsp">주변점포찾기</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">EVENT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../event/event_list.jsp">이 달의 이벤트</a></li>
                                    <li><a href="../event/store_event_list.jsp">신규점 오픈이벤트</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">FRANCHISE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../franchise/hansot_store.jsp">Why 한솥 가맹점</a></li>
                                    <li><a href="../franchise/success.jsp">성공수기</a></li>
                                    <li><a href="../franchise/process.jsp">창업개설절차</a></li>
                                    <li><a href="../franchise/calc.jsp">예상 창업 비용</a></li>
                                    <li><a href="../franchise/qna.jsp">창업문의</a></li>
                                    <li><a href="../franchise/briefing.jsp">창업설명회 일정·신청</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">HANSOT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../hansot/promise.jsp">한솥의 약속</a></li>
                                    <li><a href="../hansot/vision.jsp">한솥의 비전</a></li>
                                    <li><a href="../hansot/history.jsp">연혁&amp;수상</a></li>
                                    <li><a href="../hansot/news_list.jsp">한솥 NEWS</a></li>
                                    <li><a href="../hansot/location.jsp">오시는 길</a></li>
                                    <li><a href="../footer/faq_list.jsp">고객센터</a></li>
                                    <li class="h_last"><a href="../footer/incruit.jsp">인재채용</a></li>
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
        
<div class="content login bg_none">
    <section class="login_page mo_version">
        <!-- 로그인 form -->
        <div class="login_wrap">
            <div class="login_formcont">
                <h2 class="h2_tit">로그인</h2>
                <!-- form -->
                <form id="loginForm" name="loginForm" class="login_form" action="/authentication" method="post"><input type="hidden" id="_targetUrl" name="_targetUrl" value=""/>
                    <fieldset>
                        <legend>로그인</legend>
                        <!-- id,pw 입력폼 -->
                        <div class="area_login">
                            <!-- 아이디 -->
                            <div class="in_box">
                            <span class="form text">
                                <input type="text" id="userid" minlength="6" maxlength="20" name="userid">
                                <label for="userid">아이디</label>
                            </span>
                            </div>
                            <!-- //아이디 -->
                            <!-- 비밀번호 -->
                            <div class="in_box">
                            <span class="form text">
                                <input type="password" id="userpwd" minlength="8" name="userpwd" autocomplete="new-password">
                                <label for="userpwd">비밀번호</label>
                            </span>
                            </div>
                            <!-- //비밀번호 -->
                        </div>
                        <!--// id,pw 입력폼 -->
                        <!-- check -->
                        <div class="area_check">
                            <span class="form checkbox">
                                <input type="checkbox" id="saveid">
                                <label for="saveid">아이디 저장</label>
                            </span>
                            <span class="find_idpw">
                                <a href="./login_find.jsp">아이디/비밀번호찾기</a>
                            </span>
                        </div>
                        <!-- //check -->
                        <!-- 로그인 btn -->
                        <div class="btn_wrap">
                            <span class="btn btn_st02"><a href="#none" class="c_01 disabled" id="btnlogin" onclick="checkSubmit();">로그인</a></span>
                            </div>
                        <!-- //로그인 btn -->
                    </fieldset>
                <div>
<input type="hidden" name="_csrf" value="3a1f9029-2dc0-42ff-bbc3-227a8384a395" />
</div></form><!-- //form -->
            </div>
        </div>
        <!-- //로그인 form -->
        <!-- 회원가입 선택 -->
        <div class="join_select">
            <span><img src="../assets/images/login/join_temp_01.jpg" alt="bg" /></span>
            <div class="join_formcont">
                <h3 class="h3_tit">한솥 회원이 아니신가요?</h3>
                <p class="txt">회원이 되시면 한솥 도시락의 다양한 정보와 이벤트를 만나보실 수 있습니다.</p>
                <!-- btn -->
                <div class="btn_wrap">
                    <span class="btn btn_st02"><a href="../join/join1.jsp" class="c_02">회원가입</a></span>
                </div>
                <!-- //btn -->
            </div>
        </div>
        <!-- //회원가입 선택 -->
    </section>
</div>

<script type="text/javascript">
//<![CDATA[

$(function() {
    $("#userpwd").on("keyup",function(event){
        if(event.keyCode == 13) checkSubmit();
    });
    // 로그인 버튼 활성화
    $("#loginForm > :text, :password").keyup(function(){
        if($("#userid").val() !="" && $("#userpwd").val() != "")
            $("#btnlogin").removeClass("disabled");
        else
            $("#btnlogin").addClass("disabled");
    });

    // 아이디 저장
    if($.cookie("saveid") != "" && $.cookie("saveid") != undefined) {
        $("#userid").val($.cookie("saveid"));
        $("#saveid").attr("checked", true);
        $("#userpwd").focus();
    }else{
        $("#userid").focus();
    }

});

// 로그인
function checkSubmit(){

    if($("#btnlogin").hasClass("disabled")){
        return;
    }

    if($("#saveid").is(":checked")) {
        $.cookie("saveid", $("#userid").val(), {expires:30, path : "/"});
    }else{
        $.cookie("saveid","", {expires:-1});
    }

    document.loginForm.submit();
}
//]]>
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
                <li class="first_be off"><a href="../footer/incruit.jsp">인재채용</a></li>
                <li class="off"><a href="../footer/partners.jsp">협력업체등록</a></li>
                <li class="mo_bl"><a href="../footer/notice_list.jsp">공지사항</a></li>
                <li><a href="../footer/faq_list.jsp">고객 센터</a></li>
                <li class="mo_bl"><a href="../footer/policy.jsp"><strong>개인정보취급방침</strong></a></li>
                <li><a href="../footer/agreement.jsp">이용약관</a></li>
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