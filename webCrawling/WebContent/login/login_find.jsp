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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="17414567-fdac-4ed9-a53a-91a44e9659ba" /><title>한솥도시락 > 아이디/비밀번호 찾기</title>

    <link rel="icon" href="/assets/images/common/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" type="text/css" href="/assets/css/ui.common.css" />
<link rel="stylesheet" type="text/css" href="/assets/css/swiper.min.css" />
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

<script type="text/javascript" src="/assets/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="/assets/js/jquery-ui-1.12.1.min.js"></script>
<script type="text/javascript" src="/assets/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="/assets/js/jquery.cookie.js"></script>
<script type="text/javascript" src="/assets/js/ui.common.js"></script>
<script type="text/javascript" src="/assets/js/swiper.jquery.min.js"></script>
<script type="text/javascript" src="/assets/js/TweenMax.min.js"></script>

<script type="text/javascript" src="/assets/js/tss.js"></script>
<script type="text/javascript" src="/assets/js/tss.util.js"></script>

<!-- validatation check -->
<script type="text/javascript" src="/assets/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="/assets/js/validation/messages_ko.min.js"></script>
<script type="text/javascript" src="/assets/js/validate.js"></script>

<!-- fileupload -->
<script type="text/javascript" src="/assets/js/fileupload/jquery.iframe-transport.js"></script>
<script type="text/javascript" src="/assets/js/fileupload/jquery.fileupload.js"></script>

<script type="text/javascript" src="/assets/js/hansot.common.js"></script>

<!-- naver map api -->
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=1MATn4mHBIsSKNHepOXg&submodules=geocoder"></script>

<!-- moment js api -->
<script type="text/javascript" src="/assets/js/moment.js"></script>
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

    

    <link rel="stylesheet" type="text/css" href="/assets/css/ui.login.css" />

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
                    <a href="/login">로그인</a>
                    </li>
                <li>
                    <a href="/join/join_step1">회원가입</a>
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
                            <a href="/login">로그인</a>
                            </li>
                        <li>
                            <a href="/join/join_step1">회원가입</a>
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
                                    <li class="active"><a href="/brand/story">브랜드 스토리</a></li>
                                    <li><a href="/brand/philosophy">브랜드 철학</a></li>
                                    <li><a href="/brand/legacy">브랜드 유산</a></li>
                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">ESG</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="/brand/esg">ESG경영이란?</a></li>
                                    <li><a href="/brand/philosophy">환경보호(Environment)</a></li>
                                    <li><a href="/hansot/social">사회공헌(Social)</a></li>
                                    <li><a href="/brand/esg">윤리경영(Governance)</a></li>

                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">MENU</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="/menu/menu_list">전체메뉴</a></li>
                                    <li><a href="/menu/material">식재료 이야기</a></li>
                                    <li><a href="/menu/chancha">페루찬차마요커피</a></li>
                                    <li><a href="/menu/menu_order">단체 주문</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">STORE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="/store/store_find">주변점포찾기</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">EVENT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="/event/event_list">이 달의 이벤트</a></li>
                                    <li><a href="/event/store_event_list">신규점 오픈이벤트</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">FRANCHISE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="/franchise/hansot_store">Why 한솥 가맹점</a></li>
                                    <li><a href="/franchise/success">성공수기</a></li>
                                    <li><a href="/franchise/process">창업개설절차</a></li>
                                    <li><a href="/franchise/calc">예상 창업 비용</a></li>
                                    <li><a href="/franchise/qna">창업문의</a></li>
                                    <li><a href="/franchise/briefing">창업설명회 일정·신청</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">HANSOT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="/hansot/promise">한솥의 약속</a></li>
                                    <li><a href="/hansot/vision">한솥의 비전</a></li>
                                    <li><a href="/hansot/history">연혁&amp;수상</a></li>
                                    <li><a href="/hansot/news_list">한솥 NEWS</a></li>
                                    <li><a href="/hansot/location">오시는 길</a></li>
                                    <li><a href="/footer/faq_list">고객센터</a></li>
                                    <li class="h_last"><a href="/footer/incruit">인재채용</a></li>
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
        
<div class="content login">
    <section class="login_find mo_version">
        <!-- 아이디/비밀번호 찾기 -->
        <div class="find_wrap login_pa tab_st01">
            <h2 class="h2_tit h2_02">아이디/비밀번호 찾기</h2>
            <div class="tab_wrap">
                <ul class="tab_menu col_02">
                    <li  class="active"  ><a href="#none">아이디 찾기</a></li>
                    <li  ><a href="#none">비밀번호 찾기</a></li>
                </ul>
            </div>

            <!-- 아이디찾기 -->
            <div class="tab_cont id_find active" >
                <h3 class="h3_tit idFind">아이디 찾기</h3>

                <div class="result false idFindError" style="display:none;">
                    <p class="resule_txt">
                        <span class="s_block">아이디를 찾을 수 없습니다.</span>
                        <span class="s_block">정보를 확인하신 후 다시 입력해주세요.</span>
                    </p>
                </div>

                <form id="idFindForm" name="idFindForm" class="login_form" action="/login/login_complate" method="post"><input type="hidden" name="mode" value="id" />
                    <fieldset>
                        <legend>아이디 찾기</legend>
                        <div class="area_login">
                            <!-- 이름 -->
                            <div class="in_box">
                                <span class="form text">
                                    <input type="text" id="idName" name="name"  maxlength="10" />
                                    <label for="idName">이름</label>
                                </span>
                            </div>
                            <!-- //이름 -->
                            <!-- 이메일 -->
                            <div class="in_box">
                                <span class="form text">
                                    <input type="text" id="idEmail" name="email" style="ime-mode:active"/>
                                    <label for="idEmail">이메일</label>
                                </span>
                            </div>
                            <!-- //이메일 -->
                        </div>
                        <div class="btn_wrap">
                            <span class="btn btn_st02"><a href="#none" class="c_01 disabled" id="btnIdFind" onclick="$('#idFindForm').submit();">아이디 찾기</a></span>
                        </div>
                    </fieldset>
                <div>
<input type="hidden" name="_csrf" value="17414567-fdac-4ed9-a53a-91a44e9659ba" />
</div></form><dl class="jion_go_btn idFindError" style="display:none;">
                    <dt>로그인 계정이 없으신가요?</dt>
                    <dd>
                        <span class="btn btn_login btn_join"><a href="/join/join_step1" class="c_01 disabled">회원가입</a></span>
                    </dd>
                </dl>
            </div>
            <!-- //아이디찾기 -->


            <!-- 비밀번호 찾기 -->
            <div class="tab_cont pw_find ">
                <h3 class="h3_tit pwFind">비밀번호 찾기</h3>

                <div class="result false pwFindError" style="display:none;">
                    <p class="resule_txt">
                        <span class="s_block">계정 정보를 찾을 수 없습니다.</span>
                        <span class="s_block">정보를 확인하신 후 다시 입력해주세요.</span>
                    </p>
                </div>

                <form id="pwFindForm" name="pwFindForm" class="login_form" action="/login/login_complate" method="post"><input type="hidden" name="mode" value="pw" />
                    <fieldset>
                        <legend>비밀번호 찾기</legend>
                        <div class="area_login">
                            <!-- 이름 -->
                            <div class="in_box">
                                <span class="form text">
                                    <input type="text" id="pwName" name="name" maxlength="10" />
                                    <label for="pwName">이름</label>
                                </span>
                            </div>
                            <!-- //이름 -->
                            <!-- 아이디 -->
                            <div class="in_box">
                                <span class="form text">
                                    <input type="text" id="pwId" name="id" />
                                    <label for="pwId">아이디</label>
                                </span>
                            </div>
                            <!-- //아이디 -->
                        </div>
                        <div class="btn_wrap">
                            <span class="btn btn_st02"><a href="#none" class="c_01 disabled" id="btnPwFind" onclick="$('#pwFindForm').submit();">비밀번호 찾기</a></span>
                        </div>
                    </fieldset>
                <div>
<input type="hidden" name="_csrf" value="17414567-fdac-4ed9-a53a-91a44e9659ba" />
</div></form><dl class="jion_go_btn pwFindError" style="display:none;">
                    <dt>로그인 계정이 없으신가요?</dt>
                    <dd>
                        <span class="btn btn_login btn_join"><a href="/join/join_step1" class="c_01 disabled">회원가입</a></span>
                    </dd>
                </dl>
            </div>
            <!-- //비밀번호 찾기 -->
        </div>
        <!-- //아이디/비밀번호 찾기 -->
    </section>
</div>

<form id="find_result" name="find_result" action="/login/login_complete" method="post"><input type="hidden" name="mode" value="" />
    <input type="hidden" name="id" value="" />
    <input type="hidden" name="name" value="" />
    <input type="hidden" name="mobile_phone" value="" />
<div>
<input type="hidden" name="_csrf" value="17414567-fdac-4ed9-a53a-91a44e9659ba" />
</div></form><script type="text/javascript">
    $(function(){

        // 아이디 찾기 버튼 활성화
        $("#idFindForm :text").keyup(function(){
            if($("#idName").val() !="" && $("#idEmail").val() != "") {
                $("#btnIdFind").removeClass("disabled");
            }else {
                $("#btnIdFind").addClass("disabled");
            }
        });

        // 비밀번호 찾기 버튼 활성화
        $("#pwFindForm :text").keyup(function(){
            if($("#pwName").val() !="" && $("#pwId").val() != "")
                $("#btnPwFind").removeClass("disabled");
            else
                $("#btnPwFind").addClass("disabled");
        });

    });

    // id search validate
    $("#idFindForm").validate({
        rules: {
            name: {required: true},
            email: {
                required: true,
                email: true
            }
        },
        messages: {
            name : "이름을 입력해 주세요.",
            email: {
                required: "이메일을 입력해 주세요.",
                email: "이메일을 정확히 입력해 주세요."
            }
        },
        submitHandler: function(form){
            if($("#btnIdFind").hasClass("disabled")){
                return;
            }

            //form.submit();

            $.ajax({
                type: 'POST',
                url: "/api/login/find",
                data: $(form).serialize(),
                dataType: "json"
            }).done(function(data) {
                console.log(data);
                if(data.result == "ok"){
                    $("#find_result").find("[name=mode]").val("id");
                    $("#find_result").find("[name=id]").val(data.id);
                    $("#find_result").find("[name=name]").val(data.name);

                    $("#find_result").submit();
                }else if(data.result == "not"){ // 정보없음.
                    $(".idFind").hide();
                    $(".idFindError").show();

                    $("#idName").focus();
                }else{
                    alert(data.result);
                }

            }).fail(function() {
                tss.util.alert("일시적인 오류가 발생했습니다.\n화면을 새로고침 한 이후에 다시 시도해 주세요.");
            });

        }
    });

    // pw search validate
    $("#pwFindForm").validate({
        rules: {
            name: {required: true},
            id: {
                required: true
            }
        },
        messages: {
            name : "이름을 입력해 주세요.",
            id: "아이디를 입력해 주세요."
        },
       submitHandler: function(form){
           if($("#btnPwFind").hasClass("disabled")){
               return;
           }

           //form.submit();

           $.ajax({
               type: 'POST',
               url: "/api/login/find",
               data: $(form).serialize(),
               dataType: "json"
           }).done(function(data) {
                console.log(data);
               if(data.result == "ok"){
                   $("#find_result").find("[name=mode]").val("pw");
                   $("#find_result").find("[name=name]").val(data.name);
                   $("#find_result").find("[name=mobile_phone]").val(data.mobile_phone);

                   $("#find_result").submit();
               }else if(data.result == "not"){ // 정보없음.
                   $(".pwFind").hide();
                   $(".pwFindError").show();

                   $("#pwName").focus();
               }else{
                   alert(data.result);
               }

           }).fail(function() {
               tss.util.alert("일시적인 오류가 발생했습니다.\n화면을 새로고침 한 이후에 다시 시도해 주세요.");
           });
       }
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