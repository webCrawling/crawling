
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
	
    <meta charset=utf-8 />
    
    
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />

    
    <meta property="og:type" content="website" />
    <meta property="og:title" content="ÇÑ¼Ü À¥»çÀÌÆ® Å¬·Ð" />
    <meta property="og:url" content="" />
    <meta property="og:image" content="../assets/images/brand/brand_m_visual_01.jpg" />
    <meta property="og:description" content="3Á¶°¡ ¸¸µé¾ú´Ù!" />
   
	
    <meta name="ÇÑ¼Ü" content="ÇÑ¼Ü¸Þ´º,ÁÖ¹®" />
    
    <title>ESG °æ¿µ</title>

    
   
    <link rel="icon" href="../assets/images/common/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../assets/css/ui.common.css" />
	<link rel="stylesheet" type="text/css" href="../assets/css/swiper.min.css" />
	<link rel="stylesheet" type="text/css" href="../assets/css/ui.brand.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/animate.css" />
    
     
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
                if(tss.util.confirm('·Î±×ÀÎÀÌ ÇÊ¿äÇÕ´Ï´Ù.')) {
                    tss.util.auth();
                }
            }
            if(xhr.status === 500 || xhr.status === 400) {
                console.log("¿À·ù°¡ ¹ß»ýÇß½À´Ï´Ù.");
            }
        });
    });
</script>

    <script type="text/javascript" src="../assets/js/jquery.viewportchecker.min.js"></script>

    <!-- Global site tag (gtag.js) - Google Analytics 
    async ¼Ó¼º : ½ºÅ©¸³Æ®ÀÇ ºñµ¿±â ½ÇÇà
     ºê¶ó¿ìÀú°¡ async ¼Ó¼ºÀ» ¸¸³ª¸é ½ºÅ©¸³Æ® ½ÇÇàÀ» µÚ·Î ¹Ì·ç°í ¿ì¼± ½ºÅ©¸³Æ® ÆÄÀÏÀÇ ¼ö½Å°ú HTML ¹®¼­ÀÇ ÆÄ½Ì¿¡ ÁýÁßÇÑ´Ù. 
     ¿ÜºÎ ½ºÅ©¸³Æ® ÆÄÀÏÀÇ ¼ö½ÅÀÌ ¿Ï·áµÇ¾úÀ» ¶§ ½ºÅ©¸³Æ®¸¦ ½ÇÇà½ÃÅ²´Ù.
    -->
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
    <!-- 
    noscript : ½ºÅ©¸³Æ® ¹ÌÁö¿øÀ» Ç¥½ÃÇÑ´Ù
     -->
    <noscript>
        <img height="1" width="1" src="https://www.facebook.com/tr?id=241666853119648&ev=PageView&noscript=1"/>
    </noscript>
    <!-- End Facebook Pixel Code -->

</head>

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
                <li>
                    <a href="/login">·Î±×ÀÎ</a>
                    </li>
                <li>
                    <a href="/join/join_step1">È¸¿ø°¡ÀÔ</a>
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
                <h1><a href="../home.jsp"><span class="blind">ÇÑ¼Ü</span></a></h1>
            </div>
            <!-- gnb -->
            <section id="gnb" class="area_gnb mo_version">
                <!-- ¸ð¹ÙÀÏ ·Î±×ÀÎ/È¸¿ø°¡ÀÔ -->
                <div class="m_area_flex">
                    <ul>
                        <li>
                            <a href="/login">·Î±×ÀÎ</a>
                            </li>
                        <li>
                            <a href="/join/join_step1">È¸¿ø°¡ÀÔ</a>
                            </li>
                    </ul>
                </div>
                <!-- //¸ð¹ÙÀÏ ·Î±×ÀÎ/È¸¿ø°¡ÀÔ -->

                <div class="gnb_menu">
                    <ul>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">BRAND</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="./story.jsp">ºê·£µå ½ºÅä¸®</a></li>
                                    <li><a href="./philosophy.jsp">ºê·£µå Ã¶ÇÐ</a></li>
                                    <li><a href="./legacy.jsp">ºê·£µå À¯»ê</a></li>
                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">ESG</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="./esg.jsp">ESG°æ¿µÀÌ¶õ?</a></li>
                                    <li><a href="./philosophy.jsp">È¯°æº¸È£(Environment)</a></li>
                                    <li><a href="../hansot/social.jsp">»çÈ¸°øÇå(Social)</a></li>
                                    <li><a href="./esg.jsp">À±¸®°æ¿µ(Governance)</a></li>

                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">MENU</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../menu/menu_list.jsp">ÀüÃ¼¸Þ´º</a></li>
                                    <li><a href="../menu/material.jsp">½ÄÀç·á ÀÌ¾ß±â</a></li>
                                    <li><a href="../menu/chancha.jsp">Æä·çÂùÂ÷¸¶¿äÄ¿ÇÇ</a></li>
                                    <li><a href="../menu/menu_order.jsp">´ÜÃ¼ ÁÖ¹®</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">STORE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../store/store_find.jsp">ÁÖº¯Á¡Æ÷Ã£±â</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">EVENT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../event/event_list.jsp">ÀÌ ´ÞÀÇ ÀÌº¥Æ®</a></li>
                                    <li><a href="../event/store_event_list.jsp">½Å±ÔÁ¡ ¿ÀÇÂÀÌº¥Æ®</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">FRANCHISE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../franchise/hansot_store.jsp">Why ÇÑ¼Ü °¡¸ÍÁ¡</a></li>
                                    <li><a href="../franchise/success.jsp">¼º°ø¼ö±â</a></li>
                                    <li><a href="../franchise/process.jsp">Ã¢¾÷°³¼³ÀýÂ÷</a></li>
                                    <li><a href="../franchise/calc.jsp">¿¹»ó Ã¢¾÷ ºñ¿ë</a></li>
                                    <li><a href="../franchise/qna.jsp">Ã¢¾÷¹®ÀÇ</a></li>
                                    <li><a href="../franchise/briefing.jsp">Ã¢¾÷¼³¸íÈ¸ ÀÏÁ¤¡¤½ÅÃ»</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">HANSOT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../hansot/promise.jsp">ÇÑ¼ÜÀÇ ¾à¼Ó</a></li>
                                    <li><a href="../hansot/vision.jsp">ÇÑ¼ÜÀÇ ºñÀü</a></li>
                                    <li><a href="../hansot/history.jsp">¿¬Çõ&amp;¼ö»ó</a></li>
                                    <li><a href="../hansot/news_list.jsp">ÇÑ¼Ü NEWS</a></li>
                                    <li><a href="../hansot/location.jsp">¿À½Ã´Â ±æ</a></li>
                                    <li><a href="../footer/faq_list.jsp">°í°´¼¾ÅÍ</a></li>
                                    <li class="h_last"><a href="../footer/incruit.jsp">ÀÎÀçÃ¤¿ë</a></li>
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
    <div id="container" class="sub_page bg">
        
<div class="content brand">
    <!-- group_order -->
    <section class="brand_esg">
        <!-- »ó´Übg ¿µ¿ª -->
        <div class="brand_visual_wrap mo_tr">
            <div class="visual_bg"></div>
        </div>
        <!-- //»ó´Übg ¿µ¿ª -->
        <!-- section01 -->
        <div class="bs_wrap section_01">
            <p class="menu_tit mo_version">ESG °æ¿µ</p>
            <div class="bs_cont mo_tr">
                <h2 class="h2_tit">ÇÑ¼ÜÀÇ ESG °æ¿µ</h2>
                <div class="bs_txt">
                    <p>
                        ÇÑ¼Üµµ½Ã¶ôÀº UN¿¡¼­ 2015³â °øÆ÷ÇÑ SDGs(Áö¼Ó°¡´É°³¹ß¸ñÇ¥)¿¡ ºÎÀÀÇÏ¿© ±â¾÷Â÷¿ø¿¡¼­ ½ÇÃµÀÌ ¿ä±¸µÇ´Â ESG °æ¿µ¿¡ ¸ÅÁøÇÏ¿© ¿Ô½À´Ï´Ù.
                    </p>
                    <p>
                        ESG¶õ È¯°æº¸È£(Environment)¡¤»çÈ¸°øÇå(Social)¡¤À±¸®°æ¿µ(Governance)ÀÇ ¾àÀÚ·Î, ±â¾÷ÀÌ È¯°æº¸È£¿¡ ¾ÕÀå¼­¸ç,
                        »çÈ¸Àû ¾àÀÚ¿¡ ´ëÇÑ Áö¿ø°ú ³²³à ÆòµîÇÑ Á÷Àå¹®È­ÀÇ Á¶¼º µî »çÈ¸°øÇå È°µ¿À» ÇÏ¸ç,
                        ¹ý°ú À±¸®¸¦ Ã¶ÀúÈ÷ ÁØ¼öÇÏ´Â À±¸®°æ¿µ µî ESG°æ¿µÀ» ½ÇÃµÇØ¾ß Áö¼ÓÀûÀÎ ¼ºÀåÀÌ °¡´ÉÇÏ´Ù´Â ¶æÀÔ´Ï´Ù.
                        À¯·´¿¬ÇÕÀÌ³ª ¹Ì±¹ µî¿¡¼­´Â ÀÌ¹Ì ±â¾÷À» Æò°¡ÇÏ´Âµ¥ Áß¿äÇÑ ±âÁØÀ¸·Î ÀÚ¸®Àâ°í ÀÖÀ¸¸ç,
                        ÇöÀç Àü ¼¼°èÀûÀ¸·Î È®»êµÅ ³ª°¡°í ÀÖ´Â Ãß¼¼ÀÔ´Ï´Ù.
                        ±¹³»¿¡¼­´Â ¾ÆÁ÷±îÁö º¸ÆíÈ­ µÇ¾îÀÖÁö ¾ÊÀ¸³ª ÇÑ¼Üµµ½Ã¶ôÀº Ã¢¾÷ ¶§ºÎÅÍ ESG°æ¿µÀ» ½ÇÃµÇØ¿À°í ÀÖ½À´Ï´Ù.
                    </p>
                </div>
                <div class="bs_img mo_tr">
                    <img src="../assets/images/brand/brand_esg.jpg" alt="ESG±â¾÷ÀÇ 3´ë ¿ä°Ç" usemap="#map"/>
                    <map name="map" id="map">
                        <area target="" alt="social" title="social" href="https://www.hsd.co.kr/hansot/social" shape="rect" coords="240,422,121,323">
                    </map>
                </div>
            </div>
        </div>
    </section>
    <!-- //group_order -->
</div>
<!-- more_cont -->
<div class="conts_more">
    <h2 class="more_tit">´õ ¸¹Àº ÀÌ¾ß±â</h2>
    <ul>
        <li>
            <a href="../hansot/vision.jsp" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="../assets/images/common/more_vision.jpg" alt="ÇÑ¼ÜÀÇ ºñÀü" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">ÇÑ¼ÜÀÇ ºñÀü</h3>
                    <h3 class="h3_tit_o">ÇÑ¼ÜÀÇ ºñÀü</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="../hansot/promise.jsp" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="../assets/images/common/more_hansot.jpg" alt="ÇÑ¼ÜÀÇ ¾à¼Ó" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">ÇÑ¼ÜÀÇ ¾à¼Ó</h3>
                    <h3 class="h3_tit_o">ÇÑ¼ÜÀÇ ¾à¼Ó</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="../hansot/news_list.jsp" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="../assets/images/common/more_news.jpg" alt="ÇÑ¼Ü NEWS" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">ÇÑ¼Ü NEWS</h3>
                    <h3 class="h3_tit_o">ÇÑ¼Ü NEWS</h3>
                </figcaption>
            </figure>
        </li>
    </ul>
</div>
<!--// more_cont-->
<script type="text/javascript">
    $(document).ready(function() {
        //contents viewportChecker
        $('.bs_cont').addClass("hidden").viewportChecker({
            classToAdd: 'visible animated fadeInUp',
            offset: 120
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
                <li class="first_be off"><a href="../footer/incruit.jsp">ÀÎÀçÃ¤¿ë</a></li>
                <li class="off"><a href="../footer/partners.jsp">Çù·Â¾÷Ã¼µî·Ï</a></li>
                <li class="mo_bl"><a href="../footer/notice_list.jsp">°øÁö»çÇ×</a></li>
                <li><a href="../footer/faq_list.jsp">°í°´ ¼¾ÅÍ</a></li>
                <li class="mo_bl"><a href="../footer/policy.jsp"><strong>°³ÀÎÁ¤º¸Ãë±Þ¹æÄ§</strong></a></li>
                <li><a href="../footer/agreement.jsp">ÀÌ¿ë¾à°ü</a></li>
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