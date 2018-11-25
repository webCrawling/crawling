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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="3a1f9029-2dc0-42ff-bbc3-227a8384a395" /><title>ÇÑ¼Üµµ½Ã¶ô > È¸¿ø°¡ÀÔ</title>
    
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
<<<<<<< HEAD
=======


>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
<script type="text/javascript" src="assets/js/tss.js"></script>
<script type="text/javascript" src="assets/js/tss.util.js"></script>

<!-- validatation check -->
<script type="text/javascript" src="assets/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="assets/js/validation/messages_ko.min.js"></script>
<script type="text/javascript" src="assets/js/validate.js"></script>

<!-- fileupload -->
<script type="text/javascript" src="assets/js/fileupload/jquery.iframe-transport.js"></script>
<script type="text/javascript" src="assets/js/fileupload/jquery.fileupload.js"></script>
<<<<<<< HEAD
=======

>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
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
                if(tss.util.confirm('·Î±×ÀÎÀÌ ÇÊ¿äÇÕ´Ï´Ù.')) {
                    tss.util.auth();
                }
            }
            if(xhr.status === 500 || xhr.status === 400) {
                console.log("¿À·ù°¡ ¹ß»ýÇß½À´Ï´Ù.");
            }
        });
    });
</script><script type="text/javascript">
    </script>

    

    <link rel="stylesheet" type="text/css" href="assets/css/ui.join.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/jquery.mCustomScrollbar.min.css"/>

<script type="text/javascript" src="assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
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
                    <a href="login.do">·Î±×ÀÎ</a>
                    </li>
                <li>
                    <a href="join.do">È¸¿ø°¡ÀÔ</a>
                    </li>
                <li class="sns_insta">
                    <a href="https://www.instagram.com/hansot_official/" target="_blank" title="»õ Ã¢ ¿­¸²" ><span class="blind">instagram</span></a>
                </li>
                <li class="sns_face">
                    <a href="https://www.facebook.com/hansotOfficial/?ref=ts&fref=ts" target="_blank" title="»õ Ã¢ ¿­¸²" ><span class="blind">facebook</span></a>
                </li>
            </ul>
        </div>
    </div>
    <!-- //header flex -->

    <!-- header content -->
    <div class="hd_fixed">
        <div class="hd_content">
            <div class="logo">
                <h1><a href="/"><span class="blind">ÇÑ¼Ü</span></a></h1>
            </div>
            
            <!-- gnb -->
            <section id="gnb" class="area_gnb mo_version">
                <!-- ¸ð¹ÙÀÏ ·Î±×ÀÎ/È¸¿ø°¡ÀÔ -->
                <div class="m_area_flex">
							<ul>
								<li><a href="login.do">·Î±×ÀÎ</a></li>
								<li><a href="join.do">È¸¿ø°¡ÀÔ</a></li>
							</ul>
						</div>
                <!-- //¸ð¹ÙÀÏ ·Î±×ÀÎ/È¸¿ø°¡ÀÔ -->

                
                <div class="gnb_menu">
                    <ul>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">BRAND</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="story.go">ºê·£µå ½ºÅä¸®</a></li>
                                    <li><a href="philosophy.go">ºê·£µå Ã¶ÇÐ</a></li>
                                    <li><a href="legacy.go">ºê·£µå À¯»ê</a></li>
                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">ESG</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="esg.go">ESG°æ¿µÀÌ¶õ?</a></li>
                                    <li><a href="philosophy.go">È¯°æº¸È£(Environment)</a></li>
                                    <li><a href="social.go">»çÈ¸°øÇå(Social)</a></li>
                                    <li><a href="esg.go">À±¸®°æ¿µ(Governance)</a></li>

                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">MENU</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="menu_list.go">ÀüÃ¼¸Þ´º</a></li>
                                    <li><a href="material.go">½ÄÀç·á ÀÌ¾ß±â</a></li>
                                    <li><a href="chancha.go">Æä·çÂùÂ÷¸¶¿äÄ¿ÇÇ</a></li>
                                    <li><a href="menu_order.go">´ÜÃ¼ ÁÖ¹®</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">STORE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="store_find.go">ÁÖº¯Á¡Æ÷Ã£±â</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">EVENT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="event_list.go">ÀÌ ´ÞÀÇ ÀÌº¥Æ®</a></li>
                                    <li><a href="store_event_list.go">½Å±ÔÁ¡ ¿ÀÇÂÀÌº¥Æ®</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">FRANCHISE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="hansot_store.go">Why ÇÑ¼Ü °¡¸ÍÁ¡</a></li>
                                    <li><a href="success.go">¼º°ø¼ö±â</a></li>
                                    <li><a href="process.go">Ã¢¾÷°³¼³ÀýÂ÷</a></li>
                                    <li><a href="calc.go">¿¹»ó Ã¢¾÷ ºñ¿ë</a></li>
                                    <li><a href="qna.go">Ã¢¾÷¹®ÀÇ</a></li>
                                    <li><a href="briefing.go">Ã¢¾÷¼³¸íÈ¸ ÀÏÁ¤¡¤½ÅÃ»</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">HANSOT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="promise.go">ÇÑ¼ÜÀÇ ¾à¼Ó</a></li>
                                    <li><a href="vision.go">ÇÑ¼ÜÀÇ ºñÀü</a></li>
                                    <li><a href="history.go">¿¬Çõ&amp;¼ö»ó</a></li>
                                    <li><a href="news_list.go">ÇÑ¼Ü NEWS</a></li>
                                    <li><a href="location.go">¿À½Ã´Â ±æ</a></li>
                                    <li><a href="faq_list.go">°í°´¼¾ÅÍ</a></li>
                                    <li class="h_last"><a href="incruit.go">ÀÎÀçÃ¤¿ë</a></li>
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
    <section class="join_step_01 mo_version">
        <!-- È¸¿ø°¡ÀÔ_¾à°üµ¿ÀÇ -->
        <div class="join_step_wrap">
            <h2 class="h2_tit h2_01">È¸¿ø°¡ÀÔ</h2>
            <div class="join_step_cont cont_st01">
                <!-- join_left -->
                <div class="join_tit">
                    <h3 class="h3_tit">¾à°üµ¿ÀÇ</h3>
                    <!-- pc -->
                    <p class="pc_s_block">
                        <span class="s_block">È¸¿ø°¡ÀÔÀ» À§ÇØ¼­ <em class="emphasis">ÀÌ¿ë¾à°ü ¹×</em> </span>
                        <span class="s_block"> <em class="emphasis">°³ÀÎÁ¤º¸ ¼öÁý ¹× ÀÌ¿ë</em>¿¡ ´ëÇÑ</span>
                        <span class="s_block">¾È³»¸¦ ÀÐ°í <em class="emphasis">µ¿ÀÇ</em>ÇØÁÖ¼¼¿ä.</span>
                    </p>
                    <!-- //pc -->
                    <!-- mobile -->
                    <p class="mo_s_block">
                        <span class="s_block">È¸¿ø°¡ÀÔÀ» À§ÇØ¼­</span>
                        <span class="s_block"><em class="emphasis">ÀÌ¿ë¾à°ü ¹× °³ÀÎÁ¤º¸ ¼öÁý ¹× ÀÌ¿ë</em>¿¡ ´ëÇÑ</span>
                        <span class="s_block">¾È³»¸¦ ÀÐ°í <em class="emphasis">µ¿ÀÇ</em>ÇØÁÖ¼¼¿ä.</span>
                    </p>
                    <!-- //mobile -->
                </div>
                <!-- //join_left -->
                <!-- join_right -->
                <div class="join_sub">

<<<<<<< HEAD
                    <form id="joinForm" name="joinForm" action="join2.jsp" method="post"><h4 class="h4_tit">ÀÌ¿ë¾à°ü</h4>
=======
                    <form id="joinForm" name="joinForm" action="join2.do" method="post"><h4 class="h4_tit">ì´ìš©ì•½ê´€</h4>
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
                    <div class="textarea_wrap cont">
                        <div class="cont_area">
                            <!-- ÀÌ¿ë¾à°ü cont-->
<div class="agree_cont">
    <!-- list01-->
    <div class="list">
        <h3 class="h3_tit">Á¦1Àå ÃÑÄ¢</h3>
        <!-- 1Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 1 Á¶ (¸ñÀû)</h4>
            <p class="list_txt">ÀÌ ¾à°üÀº (ÁÖ)ÇÑ¼Ü(ÀÌÇÏ "È¸»ç"¶ó ÇÕ´Ï´Ù)ÀÌ Á¦°øÇÏ´Â À¥»çÀÌÆ® ¹× ÁÖ¹®¾Û ¼­ºñ½º(ÀÌÇÏ "¼­ºñ½º"¶ó ÇÕ´Ï´Ù)ÀÇ ÀÌ¿ëÁ¶°Ç ¹× ÀýÂ÷, ±âÅ¸ ÇÊ¿äÇÑ »çÇ×À» ±ÔÁ¤ÇÔÀ» ¸ñÀûÀ¸·Î ÇÕ´Ï´Ù.</p>
        </div>
        <!-- //1Á¶ -->
        <!-- 2Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 2 Á¶ (¾à°üÀÇ È¿·Â°ú º¯°æ)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">¨ç ÀÌ ¾à°üÀº ±× ³»¿ëÀ» È¸»ç°¡ À¥»çÀÌÆ® ¹× ÁÖ¹®¾Û¿¡ °Ô½ÃÇÏ°Å³ª ±âÅ¸ÀÇ ¹æ¹ýÀ¸·Î È¸¿ø¿¡°Ô °øÁöÇÔÀ¸·Î½á ±× È¿·ÂÀÌ ¹ß»ýÇÕ´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨è È¸»ç´Â ÇÕ¸®ÀûÀÎ »çÀ¯°¡ ÀÖ´Â °æ¿ì ÀÌ ¾à°üÀ» º¯°æÇÒ ¼ö ÀÖÀ¸¸ç, º¯°æµÈ ¾à°üÀº Á¦1Ç×°ú °°Àº ¹æ¹ýÀ¸·Î °Ô½Ã ¶Ç´Â °øÁöÇÔÀ¸·Î½á È¿·ÂÀÌ ¹ß»ýÇÕ´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨é È¸¿øÀº º¯°æµÈ ¾à°ü¿¡ µ¿ÀÇÇÏÁö ¾ÊÀ¸¸é ¾ðÁ¦µçÁö ¼­ºñ½º ÀÌ¿ëÀ» Áß´ÜÇÏ°í ÀÌ¿ë°è¾àÀ» ÇØÁöÇÒ ¼ö ÀÖ½À´Ï´Ù. ¾à°üÀÇ È¿·Â¹ß»ýÀÏ ÀÌÈÄÀÇ °è¼ÓÀûÀÎ ¼­ºñ½º ÀÌ¿ëÀº ¾à°üÀÇ º¯°æ»çÇ×¿¡ µ¿ÀÇÇÑ °ÍÀ¸·Î °£ÁÖµË´Ï´Ù. </p>
                </li>
            </ol>
        </div>
        <!-- //2Á¶ -->
        <!-- 3Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 3 Á¶ (¾à°ü ¿Ü ÁØÄ¢)</h4>
            <p class="list_txt">ÀÌ ¾à°ü¿¡ ¸í½ÃµÇÁö ¾ÊÀº »çÇ×Àº Àü±âÅë½Å±âº»¹ý, Àü±âÅë½Å»ç¾÷¹ý, Á¤º¸Åë½Å¸Á ÀÌ¿ëÃËÁø µî¿¡ °üÇÑ ¹ý·ü, ÀüÀÚ°Å·¡±âº»¹ý, ÀüÀÚ¼­¸í¹ý ¹× ±âÅ¸ °ü·Ã ¹ý·ÉÀÇ ±ÔÁ¤¿¡ µû¸¨´Ï´Ù. </p>
        </div>
        <!-- //3Á¶ -->
        <!-- 4Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 4 Á¶ (¿ë¾îÀÇ Á¤ÀÇ)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">¨ç ÀÌ ¾à°ü¿¡¼­ »ç¿ëÇÏ´Â ¿ë¾îÀÇ Á¤ÀÇ´Â ´ÙÀ½°ú °°½À´Ï´Ù.</p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1.È¸¿ø : È¸»ç¿Í ¼­ºñ½º ÀÌ¿ë¿¡ °üÇÑ °è¾àÀ» Ã¼°áÇÏ°í ÀÌ¿ëÀÚ ¾ÆÀÌµð¸¦ ºÎ¿© ¹ÞÀº ÀÚ</li>
                            <li>
                                2.¾ÆÀÌµð(ID) : È¸¿ø ½Äº°°ú È¸¿øÀÇ ¼­ºñ½º ÀÌ¿ëÀ» À§ÇÏ¿© È¸¿øÀÌ ¼±Á¤ÇÏ°í È¸»ç°¡ ½ÂÀÎÇÏ´Â ¹®ÀÚ, ¼ýÀÚ ¶Ç´Â ¾çÀÚÀÇ Á¶ÇÕ
                            </li>
                            <li>
                                3.ºñ¹Ð¹øÈ£ : È¸¿øÀÇ º»ÀÎ È®ÀÎ°ú ºñ¹Ð º¸È£¸¦ À§ÇØ È¸¿ø ÀÚ½ÅÀÌ ¼³Á¤ÇÑ ¹®ÀÚ, ¼ýÀÚ ¶Ç´Â ¾çÀÚÀÇ Á¶ÇÕ
                            </li>
                            <li>
                                4.ÀÌ¿ë°è¾à : ¼­ºñ½º¸¦ Á¦°ø¹Þ±â À§ÇÏ¿© ÀÌ ¾à°üÀ¸·Î È¸»ç¿Í È¸¿ø °£¿¡ Ã¼°áÇÏ´Â °è¾à
                            </li>
                            <li>
                                5.ÇØÁö : È¸»ç ¶Ç´Â È¸¿øÀÌ ¼­ºñ½º °³Åë ÈÄ ÀÌ¿ë°è¾àÀ» ÇØ¾àÇÏ´Â °Í
                            </li>
                            <li>
                                6.¿î¿µÀÚ : ¼­ºñ½ºÀÇ Àü¹ÝÀûÀÎ °ü¸®¿Í ¿øÈ°ÇÑ ¿î¿µÀ» À§ÇÏ¿© È¸»ç¿¡¼­ ¼±Á¤ÇÑ »ç¶÷
                            </li>
                        </ol>
                    </div>

                </li>
                <li>
                    <p class="list_txt">¨è Á¦1Ç×ÀÇ ¿ë¾î¸¦ Á¦¿ÜÇÑ ¿ë¾îÀÇ Á¤ÀÇ´Â °Å·¡ °üÇà ¹× °ü°è ¹ý·É¿¡ µû¸¨´Ï´Ù.</p>
                </li>
            </ol>
        </div>
        <!-- //4Á¶ -->
    </div>
    <!-- //list01 -->
    <!-- list02-->
    <div class="list">
        <h3 class="h3_tit">Á¦2Àå ¼­ºñ½º ÀÌ¿ë°è¾àÀÇ Ã¼°á </h3>
        <!-- 5Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 5 Á¶ (¼­ºñ½ºÀÇ ±¸ºÐ)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">¨ç È¸»ç°¡ È¸¿ø¿¡°Ô Á¦°øÇÏ´Â ¼­ºñ½º´Â ±âº»¼­ºñ½º¿Í ºÎ°¡¼­ºñ½º µîÀ¸·Î ±¸ºÐÇÕ´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨è ¼­ºñ½ºÀÇ ±¸Ã¼ÀûÀÎ Á¾·ù¿Í ³»¿ëÀº È¸»ç°¡ ÀÌ ¾à°ü ¶Ç´Â °øÁö, ÀÌ¿ë ¾È³» µî¿¡¼­ º°µµ·Î Á¤ÇÏ´Â ¹Ù¿¡ µû¸¨´Ï´Ù.</p>
                </li>
            </ol>
        </div>
        <!-- //5Á¶ -->
        <!-- 6Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 6 Á¶ (ÀÌ¿ë°è¾àÀÇ ¼º¸³)</h4>
            <p class="list_txt">ÀÌ¿ë°è¾àÀº ¼­ºñ½º¸¦ ÀÌ¿ëÇÏ°íÀÚ ÇÏ´Â ÀÚÀÇ ÀÌ¿ë ½ÅÃ»¿¡ ´ëÇÑ È¸»çÀÇ ÀÌ¿ë ½Â³«À¸·Î ¼º¸³ÇÕ´Ï´Ù. </p>
        </div>
        <!-- //6Á¶ -->
        <!-- 7Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 7 Á¶ (ÀÌ¿ë ½ÅÃ»)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">¨ç ¼­ºñ½º¸¦ ÀÌ¿ëÇÏ°íÀÚ ÇÏ´Â ÀÚ´Â È¸»ç À¥»çÀÌÆ® ¹× ÁÖ¹®¾ÛÀÇ "È¸¿ø°¡ÀÔ" ¸Þ´º¿¡¼­ È¸¿ø ¾à°ü¿¡ µ¿ÀÇÇÏ¸é È¸»ç ¼ÒÁ¤ÀÇ °¡ÀÔ½ÅÃ» ¾ç½Ä¿¡ ¿ä±¸ÇÏ´Â »çÇ×À» ±âÀçÇÏ°í '°¡ÀÔ' ¹öÆ°À» ´©¸£¸é µË´Ï´Ù.</p>
                    <p class="list_txt">¨è È¸¿ø °¡ÀÔÀ» ÇÏ¸é ÀÌ ¾à°ü¿¡ µ¿ÀÇÇÏ´Â °ÍÀ¸·Î °£ÁÖµË´Ï´Ù. </p>
                    <p class="list_txt">¨é ¿Â¶óÀÎ °¡ÀÔ ½ÅÃ» ¾ç½Ä¿¡ ±âÀçÇÏ´Â ¸ðµç È¸¿ø Á¤º¸´Â ½ÇÁ¦¿Í ÀÏÄ¡ÇÏ´Â µ¥ÀÌÅÍÀÎ °ÍÀ¸·Î °£ÁÖµË´Ï´Ù. ½Ç¸íÀÌ³ª ½ÇÁ¦¿Í ÀÏÄ¡ÇÏ´Â Á¤º¸¸¦ ÀÔ·ÂÇÏÁö ¾ÊÀº ÀÚ´Â ¹ýÀûÀÎ º¸È£¸¦ ¹ÞÀ» ¼ö ¾øÀ¸¸ç ¼­ºñ½ºÀÇ ÀÌ¿ëÀ» Á¦ÇÑ ¹ÞÀ» ¼ö ÀÖ½À´Ï´Ù.</p>
                </li>
            </ol>
        </div>
        <!-- //7Á¶ -->
        <!-- 8Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 8 Á¶ (ÀÌ¿ë ½ÅÃ»ÀÇ ½Â³«)</h4>
            <p class="list_txt">È¸»ç´Â Á¦7Á¶ÀÇ ±ÔÁ¤¿¡ ÀÇÇÑ ÀÌ¿ë ½ÅÃ»¿¡ ´ëÇÏ¿© ¿øÄ¢ÀûÀ¸·Î Áï½Ã ÀÌ¿ë ½ÅÃ»À» ½Â³«ÇÏ¸ç, ÀÌ¿ë ½Â³«ÀÇ »ç½ÇÀ» È¸¿ø¿¡°Ô ÀüÀÚ¿ìÆíÀ¸·Î Åëº¸ÇÕ´Ï´Ù.</p>
        </div>
        <!-- //8Á¶ -->
        <!-- 9Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 9 Á¶ (ÀÌ¿ë ½ÅÃ»ÀÇ ºÒ½Â³« ¹× º¸·ù)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">¨ç È¸»ç´Â ´ÙÀ½ °¢ È£¿¡ ÇØ´çÇÏ´Â °æ¿ì ÀÌ¿ë ½ÅÃ»¿¡ ´ëÇÏ¿© ½Â³«À» ÇÏÁö ¾ÊÀ» ¼ö ÀÖ½À´Ï´Ù.</p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1. °¡¸í, Â÷¸í, Çã¹«ÀÎ ¸íÀÇ ±âÅ¸ ÀÌ¿ë½ÅÃ»ÀÚ º»ÀÎÀÇ ½ÇÁ¦ ¼º¸í°ú ´Ù¸¥ ¸íÀÇ¿¡ ÀÇÇÑ ½ÅÃ»</li>
                            <li>
                                2. ÀÌ¿ë ½ÅÃ» ½Ã °¡ÀÔ½ÅÃ» ¾ç½Ä»óÀÇ ±âÀç »çÇ×À» ÇãÀ§·Î ÇÏ¿© ½ÅÃ»ÇÑ °æ¿ì
                            </li>
                            <li>
                                3. ÀÌ¿ë½ÅÃ»ÀÚ°¡ È¸»çÀÇ Ã¤¹«ÀÚ·Î¼­ Ã¤¹«¸¦ ¿ÏÁ¦ÇÏÁö ¾Ê°í ÀÖ´Â °æ¿ì
                            </li>
                            <li>
                                4. ÀÌ¿ë½ÅÃ»ÀÚ°¡ ÀÌ ¾à°ü Á¦23Á¶ Á¦2Ç×¿¡ ÀÇ°ÅÇÏ¿© ÀÌ¿ë°è¾àÀÌ ÇØÁöµÈ ÀûÀÌ ÀÖ´Â °æ¿ì
                            </li>
                            <li>
                                5. ±âÅ¸ ÀÌ¿ë½ÅÃ»ÀÚÀÇ ±ÍÃ¥»çÀ¯·Î ÀÌ¿ë ½Â³«ÀÌ °ï¶õÇÑ °æ¿ì
                            </li>
                        </ol>
                    </div>
                </li>
                <li>
                    <p class="list_txt">¨è È¸»ç´Â ´ÙÀ½ °¢ È£¿¡ ÇØ´çÇÏ´Â °æ¿ì¿¡´Â ±× »çÀ¯°¡ ÇØ¼ÒµÉ ¶§±îÁö ÀÌ¿ë ½Â³«À» º¸·ùÇÒ ¼ö ÀÖÀ¸¸ç, ±× »çÀ¯¸¦ À¥»çÀÌÆ® ¹× ÁÖ¹®¾Û¿¡ °øÁöÇÕ´Ï´Ù.</p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1. ¼³ºñÀÇ ¿©À¯°¡ ¾ø´Â °æ¿ì</li>
                            <li>
                                2. ±â¼ú »ó ¶Ç´Â ¾÷¹« ¼öÇà »ó ÁöÀåÀÌ ÀÖ´Â °æ¿ì
                            </li>
                        </ol>
                    </div>
                </li>
            </ol>
        </div>
        <!-- //9Á¶ -->
        <!-- 10Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 10 Á¶ (ÀÌ¿ë°è¾à »çÇ×ÀÇ º¯°æ)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">¨ç È¸¿øÀº ÀÌ¿ë ½ÅÃ» ½Ã ±âÀçÇÑ »çÇ×ÀÌ º¯°æµÇ¾úÀ» °æ¿ì¿¡ ¿Â¶óÀÎÀ¸·Î ¼öÁ¤ÇÕ´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨è È¸¿øÀÇ ÀÌ¿ë ½ÅÃ» ½Ã ±âÀç»çÇ×ÀÇ ¹Ìº¯°æ ¶Ç´Â ÇãÀ§ º¯°æÀ¸·Î ÀÎÇÏ¿© ¹ß»ýµÇ´Â ¹®Á¦¿¡ ´ëÇÑ Ã¥ÀÓÀº È¸¿ø¿¡°Ô ÀÖ½À´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨é È¸»ç´Â ´ÙÀ½ °¢ È£¿¡ ÇØ´çÇÏ´Â °æ¿ì¿¡ Á÷±Ç¿¡ ÀÇÇÏ¿© ¾ÆÀÌµðÀÇ »ç¿ëÀ» Á¦ÇÑÇÏ°Å³ª È¸¿øÀÇ ½ÅÃ»¿¡ ÀÇÇÏ¿© ¾ÆÀÌµð¸¦ º¯°æÇÒ ¼ö ÀÖ½À´Ï´Ù. </p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1. ¾ÆÀÌµð°¡ ¹ÌÇ³¾ç¼ÓÀ» ÇØÇÏ´Â °æ¿ì</li>
                            <li>
                                2. ¾ÆÀÌµð°¡ È¸¿øÀÇ »ç»ýÈ°À» Ä§ÇØÇÒ ¿ì·Á°¡ ÀÖ´Â °æ¿ì
                            </li>
                            <li>
                                3. ±âÅ¸ ÇÕ¸®ÀûÀÎ »çÀ¯°¡ ÀÖ´Â °æ¿ì
                            </li>
                        </ol>
                    </div>
                </li>
            </ol>
        </div>
        <!-- //10Á¶ -->
    </div>
    <!-- //list02 -->
    <!-- list03-->
    <div class="list">
        <h3 class="h3_tit">Á¦3Àå ¼­ºñ½ºÀÇ ÀÌ¿ë</h3>
        <!-- 11Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 11 Á¶ (¼­ºñ½ºÀÇ ÀÌ¿ë °³½Ã)</h4>
            <p class="list_txt">È¸»ç´Â Á¦8Á¶ÀÇ ±ÔÁ¤¿¡ µû¶ó¼­ ÀÌ¿ë½ÅÃ»À» ½Â³«ÇÑ ¶§·ÎºÎÅÍ Áï½Ã ¼­ºñ½º¸¦ °³½ÃÇÕ´Ï´Ù. ´Ù¸¸, È¸»çÀÇ ¾÷¹«»ó ¶Ç´Â ±â¼ú»óÀÇ Àå¾Ö·Î ÀÎÇÏ¿© Áï½Ã ¼­ºñ½º¸¦ °³½ÃÇÏÁö ¸øÇÏ´Â °æ¿ì, È¸»ç´Â ÀÌ¸¦ È¸»çÀÇ À¥»çÀÌÆ® ¹× ÁÖ¹®¾Û¿¡ °øÁöÇÏ°Å³ª È¸¿ø¿¡°Ô ÅëÁöÇÏ¿©¾ß ÇÕ´Ï´Ù. </p>
        </div>
        <!-- //11Á¶ -->
        <!-- 12Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 12 Á¶ (¼­ºñ½ºÀÇ ³»¿ë)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">¨çÈ¸»ç°¡ Á¦°øÇÏ´Â ¼­ºñ½º´Â ´ÙÀ½°ú °°½À´Ï´Ù.</p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1. ´ç»ç Á¦Ç°ÀÇ ¼Ò°³</li>
                            <li>
                                2. °¢Á¾ ÀÌº¥Æ®
                            </li>
                            <li>
                                3. Á¦Ç° ±¸ÀÔÃ³ ¾È³»
                            </li>
                            <li>
                                4. °Ô½ÃÆÇ ¼­ºñ½º
                            </li>
                        </ol>
                    </div>
                </li>
                <li>
                    <p class="list_txt">¨è È¸»ç´Â ÇÊ¿äÇÑ °æ¿ì ¼­ºñ½ºÀÇ ³»¿ëÀ» Ãß°¡ ¶Ç´Â º¯°æÇÒ ¼ö ÀÖÀ¸¸ç, Ãß°¡ ¶Ç´Â º¯°æ ³»¿ëÀº È¸»çÀÇ ¹× ÁÖ¹®¾Û¿¡ °øÁöÇÕ´Ï´Ù. </p>
                </li>
            </ol>
        </div>
        <!-- //12Á¶ -->
        <!-- 13Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 13 Á¶ (¼­ºñ½ºÀÇ ÀÌ¿ë ¿ä±Ý)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">¨ç º°µµ·Î Ç¥½ÃµÈ À¯·á ¼­ºñ½º¸¦ Á¦¿ÜÇÑ ¸ðµç ¼­ºñ½º´Â È¸¿øµé¿¡°Ô ¹«·á·Î Á¦°øµË´Ï´Ù. </p>
                </li>
            </ol>
        </div>
        <!-- //13Á¶ -->
    </div>
    <!-- //list03 -->
    <!-- list04-->
    <div class="list">
        <h3 class="h3_tit">Á¦4Àå °è¾à´ç»çÀÚÀÇ ±Ç¸®¿Í ÀÇ¹«</h3>
        <!-- 14Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 14 Á¶ (°³ÀÎ Á¤º¸ÀÇ º¸È£)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">¨ç È¸»ç´Â Á¤º¸Åë½Å¸ÁÀÌ¿ëÃËÁø µî¿¡ °üÇÑ ¹ý·ü µî °ü°è ¹ý·É¿¡ µû¶ó ÀÌ¿ë ½ÅÃ» ½Ã Á¦°ø¹ÞÀº È¸¿øÀÇ °³ÀÎ Á¤º¸, ÃßÈÄ¿¡ Ãß°¡·Î Á¦°ø¹Þ´Â °³ÀÎ Á¤º¸ ¹× ¼­ºñ½º ÀÌ¿ë Áß »ý¼ºµÇ´Â °³ÀÎ Á¤º¸¸¦ º¸È£ÇÕ´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨è °³ÀÎ Á¤º¸ÀÇ ¼öÁý ¸ñÀû ¹× ÀÌ¿ë ¸ñÀûÀº ´ÙÀ½ °¢ È£¿Í °°À¸¸ç, È¸»ç´Â È¸¿øÀÇ º°µµÀÇ »çÀü µ¿ÀÇ ¾øÀÌ ÀÌ ¸ñÀûÀ» ³Ñ¾î¼­´Â °³ÀÎ Á¤º¸ÀÇ ¼öÁý ¹× ÀÌ¿ëÀ» ÇÏÁö ¾Ê½À´Ï´Ù.</p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1. ¼­ºñ½ºÀÇ Á¦°ø</li>
                            <li>
                                2. ¼­ºñ½º¸¦ À§ÇÑ È¸¿øÀÇ °ü¸®
                            </li>
                        </ol>
                    </div>
                </li>
                <li>
                    <p class="list_txt">¨é È¸»ç´Â °³ÀÎ Á¤º¸¸¦ È¸¿øÀÇ º°µµÀÇ »çÀüµ¿ÀÇ ¾øÀÌ Á¦3ÀÚ¿¡°Ô Á¦°øÇÏÁö ¾Ê½À´Ï´Ù. ´Ù¸¸, ´ÙÀ½ °¢ È£ÀÇ °æ¿ì¿¡´Â È¸¿øÀÇ º°µµÀÇ µ¿ÀÇ ¾øÀÌ Á¦3ÀÚ¿¡°Ô È¸ ¿øÀÇ °³ÀÎ Á¤º¸¸¦ Á¦°øÇÒ ¼ö ÀÖ½À´Ï´Ù.</p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1. ¹ý·É¿¡ Æ¯º°ÇÑ ±ÔÁ¤ÀÌ ÀÖ´Â °æ¿ì</li>
                            <li>2. ¼­ºñ½º Á¦°ø¿¡ µû¸¥ ¿ä±ÝÁ¤»êÀ» À§ÇÏ¿© ÇÊ¿äÇÑ °æ¿ì</li>
                            <li>3. Åë°èÀÛ¼º, ÇÐ¼ú¿¬±¸ ¶Ç´Â ½ÃÀåÁ¶»ç¸¦ À§ÇÏ¿© ÇÊ¿äÇÑ °æ¿ì·Î¼­ Æ¯Á¤ °³ÀÎÀ» ½Äº°ÇÒ ¼ö ¾ø´Â ÇüÅÂ·Î Á¦°øµÇ´Â °æ¿ì</li>
                        </ol>
                    </div>
                </li>
                <li>
                    <p class="list_txt">¨ê È¸¿øÀº ¾ðÁ¦µçÁö ÀÚ½ÅÀÇ °³ÀÎ Á¤º¸¸¦ ¿­¶÷ÇÒ ¼ö ÀÖÀ¸¸ç, ¿À·ù¸¦ ¼öÁ¤ÇÒ ¼ö ÀÖ½À´Ï´Ù. ¿­¶÷ ¹× ¼öÁ¤Àº ¿øÄ¢ÀûÀ¸·Î ÀÌ¿ë ½ÅÃ»°ú µ¿ÀÏÇÑ ¹æ¹ýÀ¸·Î ÇÏ¸ç, ÀÚ¼¼ÇÑ ¹æ¹ýÀº º°µµ·Î Á¤ÇÑ "°³ÀÎÁ¤º¸º¸È£Á¤Ã¥" ¹× ÀÌ¿ë¾È³»¿¡ Á¤ÇÑ ¹Ù¿¡ µû¸¨´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨ë È¸¿øÀº ¾ðÁ¦µçÁö °³ÀÎ Á¤º¸ÀÇ ¼öÁý ¹× ÀÌ¿ë¿¡ ´ëÇÑ µ¿ÀÇ, °íÁö ¶Ç´Â ¸í½ÃµÈ ¹üÀ§¸¦ ÃÊ°úÇÏ´Â ÀÌ¿ë ¹× Á¦3ÀÚ Á¦°ø¿¡ ´ëÇÑ µ¿ÀÇ¸¦ Ã¶È¸ÇÒ ¼ö ÀÖÀ¸¸ç, ÀÌ °æ¿ì È¸»ç´Â ÁöÃ¼ ¾øÀÌ ÇÊ¿äÇÑ Á¶Ä¡¸¦ ÃëÇÕ´Ï´Ù. ´Ù¸¸ È¸¿øÀÌ °³ÀÎ Á¤º¸ÀÇ ¼öÁý ¹× ÀÌ¿ë¿¡ ´ëÇÑ µ¿ÀÇ¸¦ Ã¶È¸ÇÑ °æ¿ì¿¡ È¸»ç´Â ÀÌ¿ë°è¾àÀ» ÇØÁöÇÒ ¼ö ÀÖ½À´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨ì È¸»çÀÇ °³ÀÎ Á¤º¸ °ü¸®Ã¥ÀÓÀÚ¸¦ ºñ·ÔÇÑ °³ÀÎÁ¤º¸º¸È£¿¡ °üÇÑ ±âÅ¸ »çÇ×Àº º°µµ·Î Á¤ÇÑ "°³ÀÎÁ¤º¸º¸È£Á¤Ã¥"¿¡ ±âÀçÇÏ¿© °øÁöÇÕ´Ï´Ù. </p>
                </li>
            </ol>
        </div>
        <!-- //14Á¶ -->
        <!-- 15Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 15 Á¶ (È¸»çÀÇ ÀÇ¹«)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">¨ç È¸»ç´Â ÀÌ ¾à°üÀÌ Á¤ÇÏ´Â ¹Ù¿¡ µû¶ó Áö¼ÓÀûÀÌ°í ¾ÈÁ¤ÀûÀÎ ¼­ºñ½º¸¦ Á¦°øÇÏ´Â µ¥ ÃÖ¼±À» ´ÙÇØ¾ß ÇÕ´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨è È¸»ç´Â È¸¿øÀÇ ½Å¿ëÁ¤º¸¸¦ Æ÷ÇÔÇÑ °³ÀÎ½Å»óÁ¤º¸ÀÇ º¸¾È¿¡ ´ëÇÏ¿© ±â¼úÀû ¾ÈÀü Á¶Ä¡¸¦ °­±¸ÇÏ°í °ü¸®¿¡ ¸¸ÀüÀ» ±âÇÔÀ¸·Î½á È¸¿øÀÇ °³ÀÎÁ¤º¸ º¸¾È¿¡ ÃÖ¼±À» ´ÙÇØ¾ß ÇÕ´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨é È¸»ç´Â È¸¿øÀ¸·ÎºÎÅÍ Á¦±âµÇ´Â ÀÇ°ß ¹× ºÒ¸¸»çÇ×ÀÌ Á¤´çÇÏ´Ù°í ÆÇ´ÜµÇ´Â °æ¿ì ±× »çÇ×À» ½Å¼ÓÈ÷ Ã³¸®ÇÏ¿©¾ß ÇÕ´Ï´Ù. ´Ù¸¸, ½Å¼ÓÇÑ Ã³¸®°¡ °ï¶õÇÑ °æ¿ì¿¡´Â È¸¿ø¿¡°Ô ±× »çÀ¯¿Í Ã³¸® ÀÏÁ¤À» ÅëÁöÇÏ¿©¾ß ÇÕ´Ï´Ù. </p>
                </li>
                <li>
                    <p class="list_txt">¨ê È¸»ç´Â ÀÌ¿ë°è¾àÀÇ Ã¼°á, °è¾à»çÇ×ÀÇ º¯°æ ¹× ÇØÁö µî È¸¿ø°úÀÇ °è¾à °ü·Ã ÀýÂ÷ ¹× ³»¿ë µî¿¡ ÀÖ¾î È¸¿ø¿¡°Ô ÆíÀÇ¸¦ Á¦°øÇÏµµ·Ï ³ë·ÂÇÕ´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨ë È¸»ç´Â °øÁ¤ÇÏ°í °ÇÀüÇÑ ¿î¿µ°ú Áö¼ÓÀûÀÎ ¿¬±¸ °³¹ßÀ» ÅëÇÏ¿© ¾çÁúÀÇ ¼­ºñ½º¸¦ Á¦°øÇÔÀ¸·Î½á °í°´¸¸Á·À» ±Ø´ëÈ­ÇÏ¿© ÀÎÅÍ³Ý ºñÁî´Ï½º ¹ßÀü¿¡ ±â¿©ÇÏµµ·Ï ÇÕ´Ï´Ù. </p>
                </li>
            </ol>
        </div>
        <!-- //15Á¶ -->
        <!-- 16Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 16 Á¶ (È¸¿øÀÇ ÀÇ¹«)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">¨ç È¸¿øÀº ¼­ºñ½º¸¦ ÀÌ¿ëÇÔ¿¡ ÀÖ¾î ´ÙÀ½ °¢ È£ÀÇ ÇàÀ§¸¦ ÇÏ¿©¼­´Â ¾ÈµË´Ï´Ù.</p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1. °¡¸í, Â÷¸í, Çã¹«ÀÎ ¸íÀÇ ±âÅ¸ È¸¿øÀÇ ½ÇÁ¦ ¼º¸í°ú ´Ù¸¥ ¸íÀÇ¿¡ ÀÇÇØ ÀÌ¿ë ½ÅÃ»À» ÇÏ´Â ÇàÀ§</li>
                            <li>2. ÇãÀ§ÀÇ °³ÀÎÁ¤º¸¸¦ ±âÀçÇÏ°Å³ª Áßº¹ÇÏ¿© °¡ÀÔÇÏ´Â ÇàÀ§</li>
                            <li>3. Å¸ÀÎÀÇ ¼­ºñ½º ¾ÆÀÌµð ¹× ºñ¹Ð¹øÈ£¸¦ µµ¿ëÇÏ´Â ÇàÀ§</li>
                            <li>4. Å¸ÀÎÀÇ ÁöÀûÀç»ê±ÇÀ» Ä§ÇØÇÏ´Â ÇàÀ§</li>
                            <li>5. Å¸ÀÎÀÇ ¸í¿¹¸¦ ÈÑ¼ÕÇÏ°Å³ª »ç»ýÈ°À» Ä§ÇØÇÏ´Â ÇàÀ§</li>
                            <li>6. °Ô½ÃÆÇÀÌ³ª ´ëÈ­½Ç µî¿¡¼­ ¿å¼³, ºñ¹æ ¶Ç´Â À½¶õ, Æø·ÂÀûÀÎ ³»¿ëÀÇ Ç¥ÇöÀ» ÇÏ´Â ÇàÀ§</li>
                            <li>7. °ú½Ç ¶Ç´Â °íÀÇ·Î ÇãÀ§ÀÇ Á¤º¸¸¦ °ø°³ ¶Ç´Â À¯Æ÷ÇÏ´Â ÇàÀ§</li>
                            <li>8. ´Ù·®ÀÇ Á¤º¸¸¦ Àü¼ÛÇÏ°Å³ª µ¿ÀÏÇÑ ¶Ç´Â À¯»çÇÑ ³»¿ëÀÇ Á¤º¸¸¦ ¹Ýº¹ÀûÀ¸·Î °Ô½ÃÇÏ¿© ¼­ºñ½ºÀÇ ¾ÈÁ¤ÀûÀÎ ¿î¿µÀ» ¹æÇØÇÏ´Â ÇàÀ§</li>
                            <li>9. ±¤°í¼º Á¤º¸¸¦ ¼ö½ÅÀÚÀÇ ÀÇ»ç¿¡ ¹ÝÇÏ¿© ÀüÀÚ¿ìÆíÀ¸·Î ÀÏ½Ã¿¡ ´Ù·®À¸·Î ¶Ç´Â Áö¼ÓÀûÀ¸·Î Àü¼ÛÇÏ°Å³ª °Ô½ÃÆÇ¿¡ °Ô½ÃÇÏ¿© ´Ù¸¥ È¸¿øÀÇ ¼­ºñ½º ÀÌ¿ëÀ» ¹æÇØÇÏ´Â ÇàÀ§</li>
                            <li>10. Á¤º¸Åë½Å¼³ºñÀÇ ¿ÀÀÛµ¿ÀÌ³ª Á¤º¸ µîÀÇ ÆÄ±«¸¦ À¯¹ßÇÏ´Â ÄÄÇ»ÅÍ ¹ÙÀÌ·¯½º µîÀ» À¯Æ÷ÇÏ´Â ÇàÀ§</li>
                            <li>11. È¸»çÀÇ ¼­ºñ½º¸¦ ÀÌ¿ëÇÏ¿© ¾òÀº Á¤º¸¸¦ È¸»çÀÇ »çÀü ½Â³« ¾øÀÌ º¹Á¦ ¶Ç´Â À¯Åë½ÃÅ°°Å³ª »ó¾÷ÀûÀ¸·Î ÀÌ¿ëÇÏ´Â ÇàÀ§</li>
                            <li>12. È¸»çÀÇ Á¤»óÀûÀÎ °æ¿µ ¶Ç´Â ¾÷¹«¸¦ ¹æÇØÇÏ°Å³ª ¼­ºñ½ºÀÇ ¿î¿µÀ» ¹æÇØÇÏ´Â ÇàÀ§</li>
                            <li>13. ºÒ¹ý¼±°Å¿îµ¿À» ÇÏ´Â ÇàÀ§</li>
                            <li>14. ±âÅ¸ ¹ÌÇ³¾ç¼ÓÀ» ÇØÇÏ°Å³ª °ü·Ã¹ý·É ¹× ÀÌ ¾à°üÀ» Æ÷ÇÔÇÏ¿© È¸»ç°¡ Á¤ÇÑ ÀÌ¿ë Á¶°Ç¿¡ À§¹ÝÇÏ´Â ÇàÀ§</li>
                        </ol>
                    </div>
                </li>
                <li>
                    <p class="list_txt">¨è È¸¿øÀº ¾ÆÀÌµð ¹× ºñ¹Ð¹øÈ£ÀÇ °ü¸®¿¡ »ó´çÇÑ ÁÖÀÇ¸¦ ±â¿ï¿©¾ß ÇÕ´Ï´Ù. ¾ÆÀÌµð¿Í ºñ¹Ð¹øÈ£¿¡ °üÇÑ ¸ðµç °ü¸® Ã¥ÀÓÀº È¸¿ø¿¡°Ô ÀÖÀ¸¸ç, È¸¿ø¿¡°Ô ºÎ¿©µÈ ¾ÆÀÌµð ¹× ºñ¹Ð¹øÈ£ÀÇ °ü¸® ¼ÒÈ¦, ºÎÁ¤»ç¿ë¿¡ ÀÇÇÏ¿© ¹ß»ýÇÏ´Â ¸ðµç °á°ú¿¡ ´ëÇÑ Ã¥ÀÓÀº È¸¿ø¿¡°Ô ÀÖ½À´Ï´Ù. È¸¿øÀº ÀÚ½ÅÀÇ ¾ÆÀÌµð ¶Ç´Â ºñ¹Ð ¹øÈ£°¡ ºÎÁ¤ÇÏ°Ô »ç¿ëµÈ °æ¿ì ¹Ýµå½Ã È¸»ç¿¡ ±× »ç½ÇÀ» Åëº¸ÇÏ¿©¾ß ÇÕ´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨é È¸¿øÀº È¸»çÀÇ »çÀü ¼­¸é µ¿ÀÇ ¾øÀÌ ¼­ºñ½º¸¦ ÀÌ¿ëÇÏ¿© ¿µ¸®ÀûÀÎ ¸ñÀûÀÇ ¿µ¾÷ ÇàÀ§¸¦ ÇÏ¿©¼­´Â ¾ÈµË´Ï´Ù. ÀÌ¸¦ À§¹ÝÇÑ ¿µ¾÷ ÇàÀ§ÀÇ °á°ú¿¡ ´ëÇÏ¿© È¸»ç´Â Ã¥ÀÓÀ» ÁöÁö ¾ÊÀ¸¸ç, ÀÌ¿Í °°Àº ¿µ¾÷ ÇàÀ§ÀÇ °á°ú·Î È¸»ç¿¡ ¼ÕÇØ°¡ ¹ß»ýÇÑ °æ¿ì, È¸¿øÀº È¸»ç¿¡ ´ëÇÏ¿© ¼ÕÇØ¹è»óÀÇ ÀÇ¹«¸¦ Áý´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨ê È¸¿øÀº ¸í½ÃÀû µ¿ÀÇ°¡ ¾ø´Â ÇÑ È¸»çÀÇ ¼­ºñ½ºÀÇ ÀÌ¿ë ±ÇÇÑ, ±âÅ¸ ÀÌ¿ë°è¾à »óÀÇ ÁöÀ§¸¦ Å¸ÀÎ¿¡°Ô ¾çµµ, Áõ¿©ÇÒ ¼ö ¾øÀ¸¸ç, ÀÌ¸¦ ´ãº¸·Î Á¦°øÇÏ°Å³ª ±âÅ¸ Ã³ºÐÇÒ ¼ö ¾ø½À´Ï´Ù. </p>
                </li>
            </ol>
        </div>
        <!-- //16Á¶ -->
        <!-- 17Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 17 Á¶ (ÁöÀûÀç»ê±Ç µî)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">¨ç È¸»ç°¡ ÀÛ¼ºÇÏ¿© Á¦°øÇÏ´Â ¼­ºñ½º¿¡ °üÇÑ ÀúÀÛ±Ç ¹× ±âÅ¸ ÁöÀûÀç»ê±ÇÀº È¸»ç¿¡ ¼ÓÇÕ´Ï´Ù. È¸¿øÀº È¸»ç°¡ Á¦°øÇÏ´Â ¼­ºñ½º¸¦ È¸»çÀÇ »çÀüµ¿ÀÇ ¾øÀÌ ¿µ¸® ¸ñÀûÀ¸·Î º¹Á¦, Àü¼Û, ÃâÆÇ, ¹èÆ÷, ¹æ¼Û ±âÅ¸ ¹æ¹ý¿¡ ÀÇÇÏ¿© ÀÌ¿ëÇÏ°Å³ª Á¦3ÀÚ¿¡°Ô ÀÌ¿ëÇÏ°Ô ÇÏ¿©¼­´Â ¾ÈµË´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨è È¸¿øÀÌ ¼­ºñ½º¿¡ °ÔÀçÇÑ °Ô½Ã¹°, ÀÚ·á¿¡ °üÇÑ ±Ç¸®¿Í Ã¥ÀÓÀº °Ô½ÃÇÑ È¸¿ø¿¡°Ô ÀÖ½À´Ï´Ù. È¸»ç´Â È¸¿øÀÌ °ÔÀçÇÑ °Ô½Ã¹°, ÀÚ·á¿¡ ´ëÇÏ¿© ¼­ºñ½º ³»ÀÇ °ÔÀç±ÇÀ» °¡Áö¸ç, °ÔÀçÇÑ È¸¿øÀÇ µ¿ÀÇ ¾øÀÌ ÀÌ¸¦ ¿µ¸®ÀûÀÎ ¸ñÀûÀ¸·Î »ç¿ëÇÏÁö ¾Æ´ÏÇÕ´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨é È¸»ç´Â Á¦19Á¶ÀÇ ÀÇ¹«¸¦ À§¹ÝÇÏ´Â ³»¿ëÀ» ´ã°í ÀÖ´Â °Ô½Ã¹°¿¡ ´ëÇÏ¿© ¼öÁ¤ ¶Ç´Â »èÁ¦ÇÒ ±ÇÇÑÀ» °®½À´Ï´Ù. ÀÌ¿¡ ´ëÇÑ ±¸Ã¼ÀûÀÎ ±âÁØ°ú ÀýÂ÷´Â º°µµÀÇ ±ÔÁ¤¿¡ µû¸¨´Ï´Ù. </p>
                </li>
            </ol>
        </div>
        <!-- //17Á¶ -->
    </div>
    <!-- //list04 -->
    <!-- list05-->
    <div class="list">
        <h3 class="h3_tit">Á¦5Àå ¼­ºñ½ºÀÇ ÀÌ¿ë Á¦ÇÑ ¹× °è¾àÀÇ ÇØÁö </h3>
        <!-- 18Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 18 Á¶ (¼­ºñ½º ÀÌ¿ë Á¦ÇÑ µî)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">¨ç È¸»ç´Â È¸¿øÀÌ Á¦16Á¶ÀÇ ÀÇ¹«¸¦ À§¹ÝÇÑ °æ¿ì È¸¿øÀÇ ¼­ºñ½º ÀÌ¿ëÀ» ÀÏºÎ ¶Ç´Â ÀüºÎ Á¦ÇÑÇÒ ¼ö ÀÖ½À´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨è Á¦1Ç×ÀÇ ±ÔÁ¤¿¡ ÀÇÇÏ¿© È¸¿øÀÇ ¼­ºñ½º ÀÌ¿ëÀ» Á¦ÇÑÇÏ´Â °æ¿ì, Á¦ÇÑÀÇ Á¾·ù ¹× ±â°£ µî ±¸Ã¼ÀûÀÎ ±âÁØÀº º°µµÀÇ ±ÔÁ¤¿¡ µû¸¨´Ï´Ù. </p>
                </li>
            </ol>
        </div>
        <!-- //18Á¶ -->
        <!-- 19Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 19 Á¶ (ÀÌ¿ë Á¦ÇÑ ¹× Á¦ÇÑ ÇØÁ¦ÀÇ ÀýÂ÷)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">¨ç È¸»ç´Â Á¦18Á¶ÀÇ ±ÔÁ¤¿¡ ÀÇÇÏ¿© ÀÌ¿ëÁ¦ÇÑÀ» ÇÏ°íÀÚ ÇÏ´Â °æ¿ì ±× »çÀ¯, ÀÏ½Ã ¹× ±â°£À» Á¤ÇØ ÀüÀÚ¿ìÆí ¶Ç´Â ÀüÈ­ µîÀÇ ¹æ¹ý¿¡ ÀÇÇÏ¿© ÇØ´ç È¸¿ø ¶Ç´Â ±× ´ë¸®ÀÎ¿¡°Ô ÅëÁöÇÏ¿©¾ß ÇÕ´Ï´Ù. ´Ù¸¸ È¸»ç°¡ ±ä±ÞÇÏ°Ô ÀÌ¿ëÀ» Á¦ÇÑÇÒ ÇÊ¿ä°¡ ÀÖ´Ù°í ÀÎÁ¤ÇÏ´Â °æ¿ì¿¡´Â ±×·¯ÇÏÁö ¾Æ´ÏÇÕ´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨è Á¦1Ç×ÀÇ ±ÔÁ¤¿¡ ÀÇÇÏ¿© ÀÌ¿ë Á¦ÇÑÀÇ ÅëÁö¸¦ ¹Þ°Å³ª ±ä±ÞÇÏ°Ô ÀÌ¿ë Á¦ÇÑ Á¶Ä¡¸¦ ¹ÞÀº È¸¿ø ¶Ç´Â ±× ´ë¸®ÀÎÀº ÀüÀÚ¿ìÆí ¶Ç´Â ¼­¸éÀÇ ¹æ¹ý¿¡ ÀÇÇÏ¿© È¸»ç¿¡ ÀÌÀÇ¸¦ Á¦±âÇÒ ¼ö ÀÖ½À´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨é È¸»ç´Â Á¦2Ç×ÀÇ ±ÔÁ¤¿¡ ÀÇÇÑ ÀÌÀÇ½ÅÃ»¿¡ ´ëÇÏ¿© ±× È®ÀÎÀ» À§ÇÑ ±â°£±îÁö ÀÌ¿ëÁ¦ÇÑÀ» ÀÏ½Ã ¿¬±âÇÒ ¼ö ÀÖÀ¸¸ç, ±× °á°ú¸¦ ´çÇØ È¸¿ø ¶Ç´Â ±× ´ë¸®ÀÎ¿¡°Ô ÅëÁöÇÕ´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨ê È¸»ç´Â ÀÌ¿ë Á¦ÇÑ ±â°£ Áß ±× »çÀ¯°¡ ÇØ¼ÒµÇ´Â µîÀÇ ÇÕ¸®ÀûÀÎ »çÀ¯°¡ ÀÖ´Â °æ¿ì ÀÌ¿ë Á¦ÇÑ Á¶Ä¡¸¦ ÇØÁ¦ÇÕ´Ï´Ù. </p>
                </li>
            </ol>
        </div>
        <!-- //19Á¶ -->
        <!-- 20Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 20 Á¶ (°è¾àÀÇ ÇØÁö)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">¨ç È¸¿øÀº, ÀÌ¿ë°è¾àÀ» ÇØÁöÇÏ°íÀÚ ÇÏ´Â °æ¿ì, È¸»ç À¥»çÀÌÆ® ¹× ÁÖ¹®¾ÛÀÇ "È¸¿øÅ»Åð" ¸Þ´º¿¡¼­ Å»Åð ½ÅÃ»À» ÇÏ¿©¾ß ÇÕ´Ï´Ù. È¸»ç´Â È¸¿øÀÇ Å»Åð ½ÅÃ»À» ºü¸¥ ½Ã°£ ³»¿¡ Ã³¸®ÇÏ¿©¾ß ÇÕ´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨è È¸»ç´Â, È¸¿øÀÌ Á¦19Á¶ÀÇ ÀÇ¹«¸¦ À§¹ÝÇÑ °æ¿ì »çÀü ÅëÁö¸¦ °ÅÃÄ ÀÌ¿ë°è¾àÀ» ÇØÁöÇÏ°í È¸¿øÅ»Åð Ã³¸®ÇÒ ¼ö ÀÖ½À´Ï´Ù. ´Ù¸¸, ±× ³»¿ëÀÌ ÁßÇÏ¿© È¸»çÀÇ Á¤»óÀûÀÎ °æ¿µÀÌ³ª ¾÷¹« È°µ¿ ¶Ç´Â ¼­ºñ½º ¿î¿µ¿¡ ÁöÀåÀÌ ÀÖ´Â °æ¿ì »çÀüÅëÁö ¾øÀÌ °è¾àÀ» ÇØÁöÇÏ°í Å»Åð Ã³¸®¸¦ ÇÒ ¼ö ÀÖ½À´Ï´Ù. ±× ±¸Ã¼ÀûÀÎ ±âÁØ°ú ÀýÂ÷´Â º°µµÀÇ ±ÔÁ¤¿¡ µû¸¨´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨é È¸»ç´Â, Á¦2Ç×¿¡ ÀÇÇÏ¿© Å»Åð Ã³¸®µÈ È¸¿øÀÌ ´Ù½Ã ÀÌ¿ë ½ÅÃ»À» ÇÏ´Â °æ¿ì, ±×¿¡ ´ëÇÑ ½Â³«À» °ÅÀýÇÏ°Å³ª ÀÏÁ¤ ±â°£ ±× ½Â³«À» º¸·ùÇÒ ¼ö ÀÖ½À´Ï´Ù.</p>
                </li>
            </ol>
        </div>
        <!-- //20Á¶ -->
        <!-- 21Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 21 Á¶ (¸éÃ¥)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">¨ç È¸»ç´Â Àü½Ã, »çº¯ µî ±¹°¡ºñ»ó»çÅÂ, ÃµÀçÁöº¯, ±â°£Åë½Å»ç¾÷ÀÚÀÇ ¼­ºñ½º Á¦°ø Áß´Ü, Àü·Â°ø±Þ Áß´Ü, ÇØÄ¿ÀÇ Ä§ÀÔ, ÄÄÇ»ÅÍ ¹ÙÀÌ·¯½º ±âÅ¸ ÀÌ¿Í À¯»çÇÑ »çÁ¤À¸·Î ÀÎÇÑ È¸»ç ½Ã½ºÅÛÀÇ ÀÛµ¿ºÒ´É ±âÅ¸ È¸»çÀÇ ±ÍÃ¥ »çÀ¯ ¾øÀÌ È¸»ç°¡ ¼­ºñ½º¸¦ Á¦°øÇÒ ¼ö ¾ø´Â °æ¿ì È¸»ç´Â ±×·Î ÀÎÇÑ Ã¥ÀÓÀ» ¸éÇÕ´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨è È¸»ç´Â ÀÌ¿ë°í°´ÀÌ È¸»çÀÇ ¼­ºñ½º·ÎºÎÅÍ ±â´ëÇÏ´Â ÀÌÀÍÀ» ¾òÁö ¸øÇÏ°Å³ª Á¦°øµÈ ÀÚ·á¿¡ ´ëÇÑ Ãë»ç¼±ÅÃ ¶Ç´Â ÀÌ¿ëÀ¸·Î ¹ß»ýÇÏ´Â ¼ÕÇØ µî¿¡ ´ëÇØ¼­´Â Ã¥ÀÓÀÌ ¸éÁ¦µË´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨é È¸»ç´Â È¸¿øÀÌ °Ô½Ã, Àü¼ÛÇÑ Á¤º¸ ¶Ç´Â ÀÚ·áÀÇ ³»¿ë°ú °ü·ÃÇÏ¿©¼­´Â Ã¥ÀÓÀ» ºÎ´ãÇÏÁö ¾Ê½À´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨ê È¸»ç´Â È¸¿ø »óÈ£°£ ¶Ç´Â È¸¿ø°ú Á¦3ÀÚ »óÈ£°£¿¡ ¼­ºñ½º¸¦ ¸Å°³ÇÔÀ¸·Î ±×µé »çÀÌ¿¡ ¹ß»ýÇÑ ºÐÀï¿¡ °ü¿©ÇÒ ÀÇ¹«°¡ ¾øÀ¸¸ç, ÀÌ·Î ÀÎÇÑ ¾î¶°ÇÑ ¼ÕÇØµµ ¹è»óÇÒ Ã¥ÀÓÀÌ ¾ø½À´Ï´Ù. </p>
                </li>
            </ol>
        </div>
        <!-- //21Á¶ -->
        <!-- 22Á¶ -->
        <div class="ag_list">
            <h4 class="h4_tit">Á¦ 22 Á¶ (ºÐÀïÀÇ ÇØ°á)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">¨ç È¸»ç¿Í È¸¿øÀº ¼­ºñ½º¿Í °ü·ÃÇÏ¿© ¹ß»ýÇÑ ºÐÀïÀ» ¿ø¸¸ÇÏ°Ô ÇØ°áÇÏ±â À§ÇÏ¿© ÇÊ¿äÇÑ ¸ðµç ³ë·ÂÀ» ÇÏ¿©¾ß ÇÕ´Ï´Ù.</p>
                </li>
                <li>
                    <p class="list_txt">¨è Á¦1Ç×ÀÇ ±ÔÁ¤¿¡µµ ºÒ±¸ÇÏ°í È¸»ç¿Í È¸¿ø »çÀÌ¿¡ ¼Ò¼ÛÀÌ Á¦±âµÉ °æ¿ì, ¼Ò¼ÛÀº È¸»çÀÇ º»»ç ¼ÒÀçÁö¸¦ °üÇÒÇÏ´Â ¹ý¿øÀ» °üÇÒ¹ý¿øÀ¸·Î ÇÕ´Ï´Ù</p>
                </li>
            </ol>
        </div>
        <!-- //22Á¶ -->
    </div>
    <!-- //list05 -->
</div>
<!-- //ÀÌ¿ë¾à°ü cont --></div>

                        <!-- µ¿ÀÇ -->
                        <span class="form checkbox">
                            <input type="checkbox" id="agree_use" name="agree_use" value="Y">
                            <label for="agree_use">µ¿ÀÇÇÕ´Ï´Ù</label>
                            <span class="ck_txt">(ÇÊ¼ö)</span>
                        </span>
                        <!-- //µ¿ÀÇ -->
                    </div>

                    <h4 class="h4_tit prive">°³ÀÎÁ¤º¸ ¼öÁý ¹× È°¿ëµ¿ÀÇ</h4>
                    <div class="textarea_wrap">
                        <div class="cont_area">
                            <!-- °³ÀÎÁ¤º¸ cont -->
<div class="agree_cont" style="white-space: pre-line">
    1. ¼öÁý¸ñÀû : È¸¿ø°¡ÀÔ, »ó´ã, ¼­ºñ½º ½ÅÃ» µî

    2. ¼öÁýÇÏ´Â °³ÀÎÁ¤º¸ Ç×¸ñ
    - ÇÊ¼öÇ×¸ñ : ¼º¸í, ¾ÆÀÌµð, ºñ¹Ð¹øÈ£, ÈÞ´ëÆù¹øÈ£, ÀÌ¸ÞÀÏ
    - ¼±ÅÃÇ×¸ñ : ¾øÀ½

    3. º¸À¯±â°£ : È¸¿ø Å»Åð½Ã

    4. °³ÀÎÁ¤º¸ÁÖÃ¼ÀÚ´Â °³ÀÎÁ¤º¸ ¼öÁý ¹× ÀÌ¿ë¿¡ ´ëÇÑ µ¿ÀÇ¸¦ °ÅºÎÇÒ ±Ç¸®°¡ ÀÖ½À´Ï´Ù. µ¿ÀÇ¸¦ °ÅºÎÇÒ °æ¿ì ¿øÈ°ÇÑ ¼­ºñ½º ÀÌ¿ëÀÌ ºÒ°¡ÇÔÀ» ¾Ë·Áµå¸³´Ï´Ù.
</div>
<!-- //°³ÀÎÁ¤º¸ cont --></div>
                        <!-- µ¿ÀÇ -->
                        <span class="form checkbox">
                            <input type="checkbox" id="agree_personal" name="agree_personal" value="Y">
                            <label for="agree_personal">µ¿ÀÇÇÕ´Ï´Ù</label>
                            <span class="ck_txt">(ÇÊ¼ö)</span>
                        </span>
                        <!-- //µ¿ÀÇ -->
                    </div>
                    <h4 class="h4_tit prive">¸¶ÄÉÆÃ È°¿ë¸ñÀû µ¿ÀÇ</h4>
                    <div class="textarea_wrap">
                         <div class="cont_area">
                             <!-- °³ÀÎÁ¤º¸ cont -->
<div class="agree_cont" style="white-space: pre-line">
    1. ¼öÁý¸ñÀû : ½Å±Ô ¼­ºñ½º(Á¦Ç°) °³¹ß ¹× ¸ÂÃã ¼­ºñ½º Á¦°ø, ÀÌº¥Æ® ´çÃ· ½Ã ¾È³» µîÀ» ¸ñÀûÀ¸·Î °³ÀÎÁ¤º¸¸¦ Ã³¸®ÇÕ´Ï´Ù.

    2. ¸¶ÄÉÆÃ ¹× ±¤°í¿¡ÀÇ È°¿ë
    - ÇÊ¼öÇ×¸ñ : ¼º¸í, ÀÌ¸ÞÀÏ, ¼­ºñ½º ÀÌ¿ë ±â·Ï, Á¢¼Ó ·Î±×, ÄíÅ°, Á¢¼Ó IP Á¤º¸
    - ¼±ÅÃÇ×¸ñ : ÈÞ´ëÆù¹øÈ£

    3. º¸À¯±â°£ : È¸¿ø Å»Åð ½Ã ±îÁö º¸À¯

    4. ¸¶ÄÉÆÃ¿¡ È°¿ëÇÏ´Â ¸ñÀû ¹üÀ§ ³»¿¡¼­ °³ÀÎÁ¤º¸¸¦ ÀÌ¿ëÇÏ¸ç, µ¿ ¹üÀ§¸¦ ÃÊ°úÇÏ¿© °³ÀÎÁ¤º¸¸¦ ÀÌ¿ëÇÏ°Å³ª Á¦ 3 ÀÚ¿¡°Ô Á¦°ø, °ø°³ÇÏÁö ¾Ê½À´Ï´Ù.
</div>
<!-- //°³ÀÎÁ¤º¸ cont --></div>
                        <!-- µ¿ÀÇ -->
                        <span class="form checkbox">
                            <input type="checkbox" id="agree_3rd" name="agree_3rd" value="Y">
                            <label for="agree_3rd">µ¿ÀÇÇÕ´Ï´Ù</label>
                            <span class="ck_txt">(¼±ÅÃ)</span>
                        </span>
                            <!-- //µ¿ÀÇ -->
                    </div>
                    <div>
<input type="hidden" name="_csrf" value="4a6b1751-f4cf-4dee-af18-69d93735802e" />
</div></form><!-- ÀüÃ¼µ¿ÀÇ -->
                    <div class="all_check_wrap">
                        <span class="form checkbox pa_01">
                            <input type="checkbox" id="allchk" onclick="allchk();">
                            <label for="allchk">À§ ¾à°ü¿¡ ¸ðµÎ µ¿ÀÇÇÕ´Ï´Ù</label>
                        </span>
                        <!-- btn -->
                        <div class="btn_wrap pa_01">
                            <span class="btn btn_st03"><a href="javascript:nextStep();" class="c_01">´ÙÀ½</a></span>
                        </div>
                        <!--// btn -->
                    </div>
                    <!--// ÀüÃ¼µ¿ÀÇ -->
                </div>
                <!-- //join_right -->
            </div>
        </div>
        <!-- //È¸¿ø°¡ÀÔ_¾à°üµ¿ÀÇ -->
    </section>
</div>

<script>
    $(function(){
        $("#agree_personal, #agree_use, #agree_3rd").on('click',function(){
            if($("#agree_use").is(":checked") && $("#agree_personal").is(":checked") && $("#agree_3rd").is(":checked")){
                $("#allchk").prop("checked", true);
            }else{
                $("#allchk").prop("checked", false);
            }
        });
    });
<<<<<<< HEAD

    // ¸ðµÎ µ¿ÀÇ
=======
    // ëª¨ë‘ ë™ì˜
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
    function allchk(){
        if($("#allchk").is(":checked")){
            $("#joinForm :checkbox").prop("checked", true);
        }else{
            $("#joinForm :checkbox").prop("checked", false);
        }
    }
<<<<<<< HEAD

    // ´ÙÀ½
=======
    // ë‹¤ìŒ
>>>>>>> 537cac0794d9a025645bb5ae7e4a78ddfe83423b
    function nextStep(){
        if(!$("#agree_use").is(":checked")){
            alert("ÀÌ¿ë¾à°ü¿¡ µ¿ÀÇÇØ ÁÖ¼¼¿ä.");
            $("#agree_use").focus();
            return;
        }
        if(!$("#agree_personal").is(":checked")){
            alert("°³ÀÎÁ¤º¸ º¸È£Á¤Ã¥¿¡ µ¿ÀÇÇØ ÁÖ¼¼¿ä.");
            $("#agree_personal").focus();
            return;
        }
      $("#joinForm").submit();
      /*if(!$("#agree_3rd").is(":checked")){
        alert("¸¶ÄÉÆÃ È°¿ë¸ñÀû¿¡ µ¿ÀÇÇØ ÁÖ¼¼¿ä.");
        $("#agree_3rd").focus();
        return;
      }*/
    }
    $(".cont_area").mCustomScrollbar({
        theme: "minimal-dark",
        scrollInertia: 400
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
                <li class="first_be off"><a href="incruit.go">ÀÎÀçÃ¤¿ë</a></li>
                <li class="off"><a href="partners.go">Çù·Â¾÷Ã¼µî·Ï</a></li>
                <li class="mo_bl"><a href="notice_list.go">°øÁö»çÇ×</a></li>
                <li><a href="faq_list.go">°í°´ ¼¾ÅÍ</a></li>
                <li class="mo_bl"><a href="policy.go"><strong>°³ÀÎÁ¤º¸Ãë±Þ¹æÄ§</strong></a></li>
                <li><a href="agreement.go">ÀÌ¿ë¾à°ü</a></li>
            </ul>
        </div>
        <!--// family goods -->
		<div class="mark_webaward"><p><span class="blind">web award korea 2017 ÇÁ·£Â÷ÀÌÁîºÐ¾ß ´ë»ó2017</span></p></div><!-- 2018-01-11À¥¾î¿öµå¸¶Å© -->
        <!-- info -->
        <div class="ft_info_wrap">
            <!-- pc -->
            <div class="ft_info pc_info">
                <span class="first_be">´ëÇ¥ÀÌ»ç  ÀÌ¿µ´ö</span>
                <span>»ç¾÷ÀÚµî·Ï¹øÈ£  214-81-96569</span>
                <span>¼­¿ï½Ã °­³²±¸ °­³²´ë·Î 318(¿ª»ïµ¿) Å¸¿ö837ºôµù 8,9Ãþ</span>
                <span>T.  02-585-1114</span>
                <span>F.  02-598-1116</span>
                <span class="first_be">E.  webmaster@hsd.co.kr</span>
                <span>ÇÑ¼Ü µµ½Ã¶ô °í°´¼¾ÅÍ  02-585-1114</span>
                <span>Àü±¹Ã¢¾÷¼³¸íÈ¸  1811-0188</span>
                <span>´ÜÃ¼ÁÖ¹®  1644-3288</span>
            </div>
            <!-- //pc -->
            <!-- mobile -->
            <div class="ft_info mo_info">
                <div class="mo_info_list">
                    <p class="btn_toggle">
                        <a href="#none">ÇÑ¼Ü »ç¾÷ÀÚ Á¤º¸</a>
                    </p>
                    <div class="mo_info_on">
                        <span class="mo_bl">´ëÇ¥ÀÌ»ç  ÀÌ¿µ´ö</span>
                        <span>»ç¾÷ÀÚµî·Ï¹øÈ£  214-81-96569</span>
                        <br/>
                        <span class="mo_bl">¼­¿ï½Ã °­³²±¸ °­³²´ë·Î 318(¿ª»ïµ¿) Å¸¿ö837ºôµù 8,9Ãþ</span>
                        <br/>
                        <span class="mo_bl">T.  02-585-1114</span>
                        <span>F.  02-598-1116</span>
                        <br/>
                        <span class="mo_bl">E.  webmaster@hsd.co.kr</span>
                        <div class="mo_info_call">
                            <dl>
                                <dt>ÇÑ¼Ü °í°´¼¾ÅÍ</dt>
                                <dd>02-585-1114</dd>
                            </dl>
                            <dl>
                                <dt>Àü±¹Ã¢¾÷¼³¸íÈ¸</dt>
                                <dd>1811-0188</dd>
                            </dl>
                            <dl>
                                <dt>´ÜÃ¼ÁÖ¹®</dt>
                                <dd>1644-3288</dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //mobile -->

            <p class="copyright">COPYRIGHT<span>&copy;</span>¢ßÇÑ¼Ü. ALL RIGHTS RESERVED.</p>

            <div class="ft_sns">
                <a href="https://www.instagram.com/hansot_official/" target="_blank" title="»õ Ã¢ ¿­¸²" class="sns_insta_02" target="_blank" title="»õ Ã¢ ¿­¸²" ><span class="blind">instagram</span></a>
                <a href="https://www.facebook.com/hansotOfficial/?ref=ts&fref=ts" target="_blank" class="sns_face_02" target="_blank" title="»õ Ã¢ ¿­¸²" ><span class="blind">facebook</span></a>
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