<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>?´Í∏∞Í∞Ä Í∞Ä?•Ìïú Ïª§Ïä§?Ä ?§Î≤Ñ?àÏù¥</title>
    <style>
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '?ãÏ?', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>

</head>
<body>
123
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=25758686751d9ec9d09f35f5b6eef26a">/* api ??*/</script>
<script>
var mapContainer = document.getElementById('map'), // ÏßÄ?ÑÏùò Ï§ëÏã¨Ï¢åÌëú
    mapOption = { 
        center: new daum.maps.LatLng(33.451475, 126.570528), // ÏßÄ?ÑÏùò Ï§ëÏã¨Ï¢åÌëú
        level: 3 // ÏßÄ?ÑÏùò ?ïÎ? ?àÎ≤®
    }; 
    alert("12");
var map = new daum.maps.Map(mapContainer, mapOption); // ÏßÄ?ÑÎ? ?ùÏÑ±?©Îãà??

// ÏßÄ?ÑÏóê ÎßàÏª§Î•??úÏãú?©Îãà??
var marker = new daum.maps.Marker({
    map: map, 
    position: new daum.maps.LatLng(33.450701, 126.570667)
});

// Ïª§Ïä§?Ä ?§Î≤Ñ?àÏù¥???úÏãú??Ïª®ÌÖêÏ∏??ÖÎãà??
// Ïª§Ïä§?Ä ?§Î≤Ñ?àÏù¥???ÑÎûò?Ä Í∞ôÏù¥ ?¨Ïö©?êÍ? ?êÏú†Î°?≤å Ïª®ÌÖêÏ∏†Î? Íµ¨ÏÑ±?òÍ≥† ?¥Î≤§?∏Î? ?úÏñ¥?????àÍ∏∞ ?åÎ¨∏??
// Î≥ÑÎèÑ???¥Î≤§??Î©îÏÜå?úÎ? ?úÍ≥µ?òÏ? ?äÏäµ?àÎã§ 
var content = '<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '            Ïπ¥Ïπ¥???§Ìéò?¥Ïä§?∑Ïõê' + 
            '            <div class="close" onclick="closeOverlay()" title="?´Í∏∞"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">?úÏ£º?πÎ≥Ñ?êÏπò???úÏ£º??Ï≤®Îã®Î°?242</div>' + 
            '                <div class="jibun ellipsis">(?? 63309 (ÏßÄÎ≤? ?ÅÌèâ??2181</div>' + 
            '                <div><a href="http://www.kakaocorp.com/main" target="_blank" class="link">?àÌéò?¥Ï?</a></div>' + 
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>';

// ÎßàÏª§ ?ÑÏóê Ïª§Ïä§?Ä?§Î≤Ñ?àÏù¥Î•??úÏãú?©Îãà??
// ÎßàÏª§Î•?Ï§ëÏã¨?ºÎ°ú Ïª§Ïä§?Ä ?§Î≤Ñ?àÏù¥Î•??úÏãú?òÍ∏∞?ÑÌï¥ CSSÎ•??¥Ïö©???ÑÏπòÎ•??§Ï†ï?àÏäµ?àÎã§
var overlay = new daum.maps.CustomOverlay({
    content: content,
    map: map,
    position: marker.getPosition()       
});

// ÎßàÏª§Î•??¥Î¶≠?àÏùÑ ??Ïª§Ïä§?Ä ?§Î≤Ñ?àÏù¥Î•??úÏãú?©Îãà??
daum.maps.event.addListener(marker, 'click', function() {
    overlay.setMap(map);
});

// Ïª§Ïä§?Ä ?§Î≤Ñ?àÏù¥Î•??´Í∏∞ ?ÑÌï¥ ?∏Ï∂ú?òÎäî ?®Ïàò?ÖÎãà??
function closeOverlay() {
    overlay.setMap(null);     
}
</script>
=======
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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="3caca266-b988-4ce5-a3db-343784207d4a" /><title>«—º‹ > STORE > ¡÷∫Ø¡°∆˜√£±‚</title>

    <link rel="icon" href="../assets/images/common/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" type="text/css" href="../assets/css/ui.common.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/swiper.min.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/ui.pop.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/ui.store.css" />
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
                if(tss.util.confirm('∑Œ±◊¿Œ¿Ã « ø‰«’¥œ¥Ÿ.')) {
                    tss.util.auth();
                }
            }
            if(xhr.status === 500 || xhr.status === 400) {
                console.log("ø¿∑˘∞° πﬂª˝«ﬂΩ¿¥œ¥Ÿ.");
            }
        });
    });
</script><script type="text/javascript">
    </script>

    

    <link rel="stylesheet" type="text/css" href="../assets/css/ui.menu.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/jquery.mCustomScrollbar.min.css"/>
    <script type="text/javascript" src="../assets/js/jquery.mCustomScrollbar.concat.min.js"></script>

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
                    <a href="../login/login.jsp">∑Œ±◊¿Œ</a>
                    </li>
                <li>
                    <a href="../join/join1.jsp">»∏ø¯∞°¿‘</a>
                    </li>
                <li class="sns_insta">
                    <a href="https://www.instagram.com/hansot_official/" target="_blank" title="ªı √¢ ø≠∏≤" ><span class="blind">instagram</span></a>
                </li>
                <li class="sns_face">
                    <a href="https://www.facebook.com/hansotOfficial/?ref=ts&fref=ts" target="_blank" title="ªı √¢ ø≠∏≤" ><span class="blind">facebook</span></a>
                </li>
            </ul>
        </div>
    </div>
    <!-- //header flex -->

    <!-- header content -->
    <div class="hd_fixed">
        <div class="hd_content">
            <div class="logo">
                <h1><a href="../home.jsp"><span class="blind">«—º‹</span></a></h1>
            </div>
            <!-- gnb -->
            <section id="gnb" class="area_gnb mo_version">
                <!-- ∏πŸ¿œ ∑Œ±◊¿Œ/»∏ø¯∞°¿‘ -->
                <div class="m_area_flex">
                    <ul>
                        <li>
                            <a href="/login">∑Œ±◊¿Œ</a>
                            </li>
                        <li>
                            <a href="/join/join_step1">»∏ø¯∞°¿‘</a>
                            </li>
                    </ul>
                </div>
                <!-- //∏πŸ¿œ ∑Œ±◊¿Œ/»∏ø¯∞°¿‘ -->

                <div class="gnb_menu">
                    <ul>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">BRAND</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="../brand/story.jsp">∫Í∑£µÂ Ω∫≈‰∏Æ</a></li>
                                    <li><a href="../brand/philosophy.jsp">∫Í∑£µÂ √∂«–</a></li>
                                    <li><a href="../brand/legacy.jsp">∫Í∑£µÂ ¿ØªÍ</a></li>
                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">ESG</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="../brand/esg.jsp">ESG∞Êøµ¿Ã∂ı?</a></li>
                                    <li><a href="../brand/philosophy.jsp">»Ø∞Ê∫∏»£(Environment)</a></li>
                                    <li><a href="../hansot/social.jsp">ªÁ»∏∞¯«Â(Social)</a></li>
                                    <li><a href="../brand/esg.jsp">¿±∏Æ∞Êøµ(Governance)</a></li>

                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">MENU</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../menu/menu_list.jsp">¿¸√º∏ﬁ¥∫</a></li>
                                    <li><a href="../menu/material.jsp">Ωƒ¿Á∑· ¿Ãæﬂ±‚</a></li>
                                    <li><a href="../menu/chancha.jsp">∆‰∑Á¬˘¬˜∏∂ø‰ƒø««</a></li>
                                    <li><a href="../menu/menu_order.jsp">¥‹√º ¡÷πÆ</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">STORE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../store/store_find.jsp">¡÷∫Ø¡°∆˜√£±‚</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">EVENT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../event/event_list.jsp">¿Ã ¥ﬁ¿« ¿Ã∫•∆Æ</a></li>
                                    <li><a href="../event/store_event_list.jsp">Ω≈±‘¡° ø¿«¬¿Ã∫•∆Æ</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">FRANCHISE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../franchise/hansot_store.jsp">Why «—º‹ ∞°∏Õ¡°</a></li>
                                    <li><a href="../franchise/success.jsp">º∫∞¯ºˆ±‚</a></li>
                                    <li><a href="../franchise/process.jsp">√¢æ˜∞≥º≥¿˝¬˜</a></li>
                                    <li><a href="../franchise/calc.jsp">øπªÛ √¢æ˜ ∫ÒøÎ</a></li>
                                    <li><a href="../franchise/qna.jsp">√¢æ˜πÆ¿«</a></li>
                                    <li><a href="../franchise/briefing.jsp">√¢æ˜º≥∏Ì»∏ ¿œ¡§°§Ω≈√ª</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">HANSOT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../hansot/promise.jsp">«—º‹¿« æ‡º”</a></li>
                                    <li><a href="../hansot/vision.jsp">«—º‹¿« ∫Ò¿¸</a></li>
                                    <li><a href="../hansot/history.jsp">ø¨«ı&amp;ºˆªÛ</a></li>
                                    <li><a href="../hansot/news_list.jsp">«—º‹ NEWS</a></li>
                                    <li><a href="../hansot/location.jsp">ø¿Ω√¥¬ ±Ê</a></li>
                                    <li><a href="../footer/faq_list.jsp">∞Ì∞¥ºæ≈Õ</a></li>
                                    <li class="h_last"><a href="../footer/incruit.jsp">¿Œ¿Á√§øÎ</a></li>
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
        
<div class="content store">
    <!-- store_find -->
    <section class="store_find">
        <div class="store_wrap">
            <!-- title -->
            <div class="ontitle">
                <h2 class="h2_tit h2_01 mo_version">¡÷∫Ø¡°∆˜√£±‚</h2>
                <!-- ¡÷∫Ø¡°∆˜√£±‚ Form -->
                <form id="searchForm" name="searchForm" action="../store/store_find.jsp" method="get" onsubmit="searchStore(1);return false;"><input type="hidden" id="idx" name="idx" value=""/>
                    <dl class="store_form mo_version" id="map_position">
                        <div class="in_box">
                            <dl class="in_box_th">
                                <dt class="blind">¡÷∫Ø¡°∆˜√£±‚</dt>
                                <!-- Ω√/µµ º±≈√ -->
                                <dd class="store_select">
                                <span class="select">
                                    <select class="classic" title="Ω√/µµ º±≈√ ±∏∫–" id="sido" name="sido">
                                        <option value="">Ω√/µµ º±≈√</option>
                                    </select>
                                </span>
                                </dd>
                                <!-- //Ω√/µµ º±≈√ -->
                                <!-- ±∫/±∏ º±≈√ -->
                                <dd class="store_select last_selcet">
                                <span class="select">
                                    <select class="classic" title="±∏/±∫ º±≈√ ±∏∫–" id="gungoo" name="gungoo">
                                        <option value="">±∏/±∫ º±≈√</option>
                                    </select>
                                </span>
                                </dd>
                                <!-- //±∫/±∏ º±≈√ -->
                                <!-- ∞Àªˆ√¢ -->
                                    <dd class="store_search">
                                    <div class="in_box">
                                    <span class="form text">
                                        <input type="text" maxlength="16" id="searchKeyword" name="searchKeyword">
                                        <label for="searchKeyword">∞ÀªˆæÓ ¿‘∑¬</label>
                                        <a href="#none" onclick="searchStore(1);return false;"
                                           class="btn_overlap se_box"><span class="blind">∞Àªˆæ∆¿Ãƒ‹</span></a>
                                    </span>
                                    </div>
                                </dd>
                                <!-- //∞Àªˆ√¢ -->
                                <!-- btn -->
                                <dd class="btn_store">
                                    <div class="btn_wrap">
                                        <span class="btn btn_st03"><a href="#none"
                                                                      onclick="searchStore(1);return false;"
                                                                      class="c_02" id="btn_search">∏≈¿Â√£±‚</a></span>
                                    </div>
                                </dd>
                                <!-- //btn -->
                            </dl>
                        </div>
                    </dl>
                <div>
</div></form><!-- //¡÷∫Ø¡°∆˜√£±‚ Form -->
            </div>
            <!-- //title -->
            <!-- map -->
            <div class="store_map">
                <div class="map_img" id="map">
                </div>
            </div>
            <!-- //map -->
        </div>
    </section>
    <!-- //store_find -->

    <!--∞Àªˆ ∞·∞˙ ≈◊¿Ã∫Ì-->
    <section class="store_search_result">
        <div class="table-wrapper">
            <table class="store_table">
            </table>
        </div>

        <div class="pager">
            <!-- page -->
            <!-- //page -->
        </div>

    </section>

    <!-- Ω≈±‘ ∞°∏Õ¡° -->
    <section class="store_new">
        <div class="store_new_wrap">
            <h2 class="h2_tit fz_01">
                <span class="s_block">«—º‹¿«</span>
                <span class="s_block"><em class="f_b">Ω≈±‘ ∞°∏Õ¡°</em>¿ª</span>
                <span class="s_block">º“∞≥«’¥œ¥Ÿ</span>
            </h2>
            <div class="store_new_list">

                <div class="indi_wrap">
                    <!-- page -->
                    <!-- //page -->
                </div>
                <!-- //page, btn -->
            </div>
        </div>
    </section>
    <!-- //Ω≈±‘ ∞°∏Õ¡° -->
</div>

<!-- ∆Àæ˜ -->
<div id="map_popup" style="display:none;">
    <div class="marker_wrap">
        <div class="store_info_wrap" style="display:block;">
            <div class="store_info_de">
                <h3 class="name" id="pop_store_name"></h3>
                <p class="info_add" id="pop_store_address"></p>
                <p class="info_call" id="pop_store_phone"></p>
                <div class="detail">
                    <a href="javascript:openLayerPopup('pop-store');" class="btn_de">¿⁄ºº»˜ ∫∏±‚</a>
                </div>
                <a href="#none" class="btn_close" onclick="closeOverlay();"><span class="blind">close</span></a>
            </div>
        </div>
    </div>
</div>
<!-- // ∆Àæ˜-->

<!-- ¿⁄ºº»˜∫∏±‚ popup -->
<div class="pop-wrap" id="pop-store" style="display:none">
    <dl class="pop-store-wrap">
        <dt class="pop-header fz_02"><span id="pop2_store_name"></span>
            <a href="javascript:closeLayerPopup();" class="btnp-close">close</a>
        </dt>
        <dd class="pop-box">
            <div class="pop-cont">
                <div class="pop-msg">
                    <dl class="pop-store-info">
                        <dt>¡÷º“</dt>
                        <dd id="pop2_store_address"></dd>
                        <dt>¿¸»≠π¯»£</dt>
                        <dd id="pop2_store_phone"></dd>
                        <dt>øµæ˜Ω√∞£</dt>
                        <dd id="pop2_store_business_hour"></dd>
                    </dl>
                    <!-- ∏≈¿Â¿Ã∫•∆Æ -->
                    <dl class="shop_event">
                        <dt>Ω≈±‘¡° ø¿«¬ ¿Ã∫•∆Æ</dt>
                        <dd id="pop2_store_event"></dd>
                    </dl>
                    <!-- //∏≈¿Â¿Ã∫•∆Æ -->
                    <!-- ¡¬ºÆ/¡÷¬˜ -->
                    <dl class="shop_etc">
                        <dt><span class="blind">¡¬ºÆø©∫Œ</span></dt>
                        <dd class="seat" id="pop2_store_seat"></dd>
                        <dt><span class="blind">¡÷¬˜ø©∫Œ</span></dt>
                        <dd class="car" id="pop2_store_car"></dd>
                    </dl>
                    <!-- //¡¬ºÆ/¡÷¬˜ -->
                </div>
            </div>
        </dd>
    </dl>
</div>
<!-- // ¿⁄ºº»˜∫∏±‚ popup -->

<!-- ∞Àªˆ∞·∞˙ æ¯¿ª∞ÊøÏ popup -->
<div class="pop-wrap" id="pop-search" style="display:none">
    <dl class="pop-search-wrap">
        <dt class="pop-header fz_02"></dt>
        <dd class="pop-box">
            <div class="pop-cont">
                <div class="pop-msg">
                    ∞Àªˆ∞·∞˙∞° æ¯Ω¿¥œ¥Ÿ.
                </div>
                <a href="javascript:closeLayerPopup();" class="btnp-close">»Æ¿Œ</a>
            </div>
        </dd>
    </dl>
</div>
<!-- //∞Àªˆ∞·∞˙ æ¯¿ª∞ÊøÏ popup -->

<script type="text/javascript">
  $(function () {
    mapResize();
    currentLoc();
    newStore(1);    // Ω≈±‘ ∞°∏Õ¡°
  });

  var useCurrentLoc = true;
  var lat, lng;
  var map, markerOptions, infowindow, contentString;
  var mapContainer = document.getElementById("map"); // ¡ˆµµ∏¶ «•Ω√«“ div
  var eventStoreIdx = $.trim('');    // ∏≈¿Â¿Ã∫•∆Æø°º≠ ≥—æÓø¬ idx
  var markerList = [];

  // «ˆ¿Á¿ßƒ°
  function currentLoc() {

    if (eventStoreIdx != "" && !isNaN(parseInt(eventStoreIdx))) {
      chanageLoc(eventStoreIdx);
    } else {
      lat = 37.4964502;   // ¿ßƒ° ∞Àªˆæ»µ…Ω√ ±‚∫ª≥Î√‚ : ∞≠≥≤ø™¡°
      lng = 127.0278032;

      // HTML5¿« geolocation¿∏∑Œ ªÁøÎ«“ ºˆ ¿÷¥¬¡ˆ »Æ¿Œ«’¥œ¥Ÿ
      if (navigator.geolocation) {
        // GeoLocation¿ª ¿ÃøÎ«ÿº≠ ¡¢º” ¿ßƒ°∏¶ æÚæÓø…¥œ¥Ÿ
        navigator.geolocation.getCurrentPosition(function (position) {
          lat = position.coords.latitude; // «ˆ¿Á ¿ßµµ
          lng = position.coords.longitude; // «ˆ¿Á ∞Êµµ
        });
      }

      loadMap();
    }
  }

  // ¡ˆµµª˝º∫
  function loadMap() {
    var loc = new naver.maps.LatLng(lat, lng);
    var mapOption = {
      center: loc.destinationPoint(0, 500), // ¡ˆµµ¿« ¡ﬂΩ…¡¬«•
      zoom: 9, // ¡ˆµµ¿« »Æ¥Î ∑π∫ß
      minZoom: 3, // ¡ˆµµ¿« √÷º“ ∑π∫ß
      logoControl: false,        // naver ∑Œ∞Ì
      mapDataControl: false      // ¿˙¿€±« ƒ¡∆Æ∑—
    };

    // ¡ˆµµ∏¶ ª˝º∫«—¥Ÿ
    map = new naver.maps.Map(mapContainer, mapOption);
  }

  // ¡§∫∏√¢ø≠±‚
  function makeOverlay(idx) {
    closeOverlay();
    $.getJSON("/api/store_detail/" + idx, function (rst) {

      var data = rst[0];
      var event = rst[1];

      $("#pop_store_name, #pop2_store_name").text(data.name);
      $("#pop_store_address, #pop2_store_address").text(data.address);
      $("#pop_store_phone, #pop2_store_phone").text(tss.util.phoneFormat(data.phoneNumber));
      $("#pop2_store_business_hour").html(tss.util.nl2br(data.businessHour));

      $("#pop2_store_event").text("");
      if (event.length > 0) {
        var event_content = "";
        $.each(event, function (ekey, eval) {
          event_content += eval.title + "<br/>";
        });
        $("#pop2_store_event").html(event_content);
      } else {
        $("#pop2_store_event").text("¿Ã∫•∆Æ∞° æ¯Ω¿¥œ¥Ÿ.");
      }

      if (data.seatYn == 'Y') $("#pop2_store_seat").removeClass("off");
      else $("#pop2_store_seat").addClass("off");

      if (data.parkingYn == 'Y') $("#pop2_store_car").removeClass("off");
      else $("#pop2_store_car").addClass("off");

      contentString = $("#map_popup").html();
      var moveLatLon = new naver.maps.LatLng(data.lat, data.lng);
      infowindow = new naver.maps.InfoWindow({
        content: contentString,
        position: moveLatLon,
        pixelOffset: new naver.maps.Point(-22, -57),
        disableAnchor: true
      });

      infowindow.open(map);
      //$(".store_info_wrap").show();


      // ≈¨∏Ø«— ¡ˆ¡°¿Ã ¡ﬂΩ…¿∏∑Œ ø¿µµ∑œ ¿Ãµø
      //map.setCenter(moveLatLon);
      var moveLatLon = new naver.maps.LatLng(data.lat, data.lng);
      map.panTo(moveLatLon);
    });
  }

  // ¡§∫∏√¢¥›±‚
  function closeOverlay() {
    if (infowindow != null) infowindow.close();
  }

  // ¡ˆµµªÁ¿Ã¡Ó
  function mapResize() {
    var rate = window.innerWidth <= 1023 ? 0.9 : 0.598;
    var w = $(".store_wrap").width();
    var h = w * rate;


    mapContainer.style.width = w + 'px';
    mapContainer.style.height = h + 'px';
  }

  $(window).on("resize", function () {
    mapResize();
  });

  // ∏≈¿Â√£±‚
  function searchStore(pageNo) {
    useCurrentLoc = false;
    $("#idx").val("");
    /*console.log($("input[name='searchCondition']:checked").val());
    if($("input[name='searchCondition']:checked").val() == 'address') { //¡÷º“∑Œ ∞Àªˆ

    } else { //∏≈¿Â∏Ì¿∏∑Œ ∞Àªˆ

    }*/

    for (var i = 0 ; i < markerList.length ; i++) {
      markerList[i].setMap(null);
    }


    $.getJSON("/api/store_search?" + $("#searchForm").serialize(), function (data) {
      if (data.length > 0) {

        $.each(data, function (key, val) {
          // ¡ˆµµø° ∏∂ƒø∏¶ ª˝º∫«œ∞Ì «•Ω√«—¥Ÿ.
          markerOptions = {
            position: new naver.maps.LatLng(val.lat, val.lng).destinationPoint(0, 0),
            map: map,
            icon: {
              url: '../assets/images/common/icon_map.png',
              size: new naver.maps.Size(50, 52),
              scaledSize: new naver.maps.Size(42, 52),

            }
          };

          // ∏∂ƒøø° ≈¨∏Ø¿Ã∫•∆Æ µÓ∑œ
          var marker = new naver.maps.Marker(markerOptions);
          naver.maps.Event.addListener(marker, 'click', function () {
            // ø¿πˆ∑π¿Ã ª˝º∫
            makeOverlay(val.idx);
          });

          markerList.push(marker);

        });
      }

    });

    renderSearchResult(pageNo);

  }

  //∏≈¿Â√£±‚ ∏ÆΩ∫∆Æ ∑ª¥ı
  function renderSearchResult(pageNo) {
    $.getJSON("/api/store_search/" + pageNo + "?" + $("#searchForm").serialize(), function (data) {
      console.log(data);

      var list = "";

      if (data.list.length > 0) {

        list += '<tr>';
        list += ' <th>∏≈¿Â∏Ì</th>';
        list += ' <th>ø¨∂Ù√≥</th>';
        list += ' <th>¡÷º“</th>';
        list += '<tr>';

        $.each(data.list, function (key, val) {

          list += '<tr>';
          list += ' <td class="store_name"><a href="#none" onclick="makeOverlay(' + val["idx"] + ');">' + val["name"] + '</a></td>';
          list += ' <td>' + tss.util.phoneFormat(val["phoneNumber"]) + '</td>';
          list += ' <td>' + val["address"] + '</td>';
          list += '<tr>';

        });

        $(".store_table > tbody > tr").remove();
        $(".store_table").prepend(list);
        searchPaging(data.pagination);
        $(".store_search_result").show();


        var moveLatLon = new naver.maps.LatLng(data.list[0].lat, data.list[0].lng);
        map.setCenter(moveLatLon);

      } else {
        openLayerPopup('pop-search');
        $(".store_search_result").hide();
      }

    });
  }

  // Ω≈±‘ ∞°∏Õ¡° _ ¿ßƒ°∫Ø∞Ê
  function chanageLoc(idx) {
    useCurrentLoc = false;
    $("#idx").val(idx);
    loadMap();

    $.getJSON("/api/store_search?" + $("#searchForm").serialize(), function (data) {
      if (data.length > 0) {

        $.each(data, function (key, val) {
          // ¡ˆµµø° ∏∂ƒø∏¶ ª˝º∫«œ∞Ì «•Ω√«—¥Ÿ.
          console.log(val)

          markerOptions = {
            position: new naver.maps.LatLng(val.lat, val.lng).destinationPoint(0, 0),
            map: map,
            icon: {
              url: '../assets/images/common/icon_map.png',
              size: new naver.maps.Size(50, 52),
              scaledSize: new naver.maps.Size(42, 52),

            }
          };

          // ∏∂ƒøø° ≈¨∏Ø¿Ã∫•∆Æ µÓ∑œ
          var marker = new naver.maps.Marker(markerOptions);
          naver.maps.Event.addListener(marker, 'click', function () {
            // ø¿πˆ∑π¿Ã ª˝º∫
            makeOverlay(val.idx);
          });

          markerList.push(marker);

        });

        // ∏∂ƒø¿« ¡ﬂΩ…¿ª ¿Ãµø Ω√≈µ¥œ¥Ÿ.
        if (useCurrentLoc === false) {
          lat = data[0].lat;
          lng = data[0].lng;
        }

        makeOverlay(data[0].idx);
      }

    });

    // Ω∫≈©∑— ¿ßƒ° ¿Ãµø
    var offset = $("#map_position").offset();
    $("html, body").animate({scrollTop: offset.top}, 400);
  }


  // Ω≈±‘ ∞°∏Õ¡°
  function newStore(pageNo) {
    $.ajax({
      type: 'POST',
      url: "/api/store_new/" + pageNo,
      headers: {
        Accept: "application/json; charset=utf-8",
        "Content-Type": "application/json; charset=utf-8"
      },
      dataType: "json"
    }).done(function (data) {

      var list = "";
      if (data.list.length > 0) {

        $.each(data.list, function (key, val) {

          var dd = getFormattedDate(new Date(val["openDt"]));
          var opendt = dd.replace(/-/gi, ".").substring(2);

          list += '<li>';
          list += '   <p class="new_date">' + opendt + ' OPEN</p>';
          list += '   <div class="new_info">';
          list += '   <h3 class="h3_tit fz_02 f_b">' + val["name"] + '</h3>';
          list += '   <p class="new_add"><span>' + val["address"] + '</span></p>';
          list += '   <p class="new_call">' + tss.util.phoneFormat(val["phoneNumber"]) + '</p>';
          list += '   <dl>';
          list += '       <dt><span>OPEN EVENT</span></dt>';

          if (val["openEvent"] != null) {
            list += '       <dd><span>' + val["openEvent"] + '</span></dd>';
          } else {
            list += '       <dd><span>¿Ã∫•∆Æ∞° æ¯Ω¿¥œ¥Ÿ</span></dd>';
          }
          list += '   </dl>';
          list += '   <a href="#none" class="location" onclick="chanageLoc(' + val["idx"] + ');">¿ßƒ°∫∏±‚</a>';
          list += '   </div>';
          list += '</li>';

        });

        $(".store_new_list > ul").remove();
        $(".store_new_list").prepend("<ul>" + list + "</ul>");
        paging(data.pagination);

      } else {
        $(".store_new").hide();
      }

    }).fail(function () {
      $(".store_new").hide();
    });
  }

  // Ω≈±‘∏≈¿Â ∆‰¿Ã¬°
  function paging(data) {

    var txt = '';
    txt += '<div class="pageinate">';
    txt += '    <div class="cont">';

    // ¿Ã¿¸∆‰¿Ã¡ˆ
    if (data.prevPageNo == data.currentPageNo) {
      txt += '        <a href="#none" class="arr prev off">¿Ã¿¸∆‰¿Ã¡ˆ</a>';
    } else {
      txt += '        <a href="javascript:newStore(' + data.prevPageNo + ')" class="arr prev">¿Ã¿¸∆‰¿Ã¡ˆ</a>';
    }

    for (var i = data.startPageNo; i <= data.endPageNo; i++) {
      if (data.currentPageNo == i) {
        txt += '        <a href="#none" class="active">' + i + '</a>';
      } else {
        txt += '        <a href="javascript:newStore(' + i + ')">' + i + '</a>';
      }
    }

    // ¥Ÿ¿Ω∆‰¿Ã¡ˆ
    if (data.lastPageNo == data.currentPageNo) {
      txt += '        <a href="#none" class="arr next off">¥Ÿ¿Ω∆‰¿Ã¡ˆ</a>';
    } else {
      txt += '        <a href="javascript:newStore(' + data.nextPageNo + ')" class="arr next">¥Ÿ¿Ω∆‰¿Ã¡ˆ</a>';
    }
    txt += '    </div>';
    txt += '</div>';

    $(".indi_wrap > div").remove();
    $(".indi_wrap").append(txt);

  }

  // ∏≈¿Â ∞Àªˆ∞·∞˙ ∆‰¿Ã¬°
  function searchPaging(data) {

    var txt = '';
    txt += '<div class="pageinate">';
    txt += '    <div class="cont">';

    // ¿Ã¿¸∆‰¿Ã¡ˆ
    if (data.prevPageNo == data.currentPageNo) {
      txt += '        <a href="#none" class="arr prev off">¿Ã¿¸∆‰¿Ã¡ˆ</a>';
    } else {
      txt += '        <a href="javascript:renderSearchResult(' + data.prevPageNo + ')" class="arr prev">¿Ã¿¸∆‰¿Ã¡ˆ</a>';
    }

    for (var i = data.startPageNo; i <= data.endPageNo; i++) {
      if (data.currentPageNo == i) {
        txt += '        <a href="#none" class="active">' + i + '</a>';
      } else {
        txt += '        <a href="javascript:renderSearchResult(' + i + ')">' + i + '</a>';
      }
    }

    // ¥Ÿ¿Ω∆‰¿Ã¡ˆ
    if (data.lastPageNo == data.currentPageNo) {
      txt += '        <a href="#none" class="arr next off">¥Ÿ¿Ω∆‰¿Ã¡ˆ</a>';
    } else {
      txt += '        <a href="javascript:renderSearchResult(' + data.nextPageNo + ')" class="arr next">¥Ÿ¿Ω∆‰¿Ã¡ˆ</a>';
    }
    txt += '    </div>';
    txt += '</div>';

    $(".pager > div").remove();
    $(".pager").append(txt);

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
                <li class="first_be off"><a href="../footer/incruit.jsp">¿Œ¿Á√§øÎ</a></li>
                <li class="off"><a href="../footer/partners.jsp">«˘∑¬æ˜√ºµÓ∑œ</a></li>
                <li class="mo_bl"><a href="../footer/notice_list.jsp">∞¯¡ˆªÁ«◊</a></li>
                <li><a href="../footer/faq_list.jsp">∞Ì∞¥ ºæ≈Õ</a></li>
                <li class="mo_bl"><a href="../footer/policy.jsp"><strong>∞≥¿Œ¡§∫∏√Î±ﬁπÊƒß</strong></a></li>
                <li><a href="../footer/agreement.jsp">¿ÃøÎæ‡∞¸</a></li>
            </ul>
        </div>
        <!--// family goods -->
		<div class="mark_webaward"><p><span class="blind">web award korea 2017 «¡∑£¬˜¿Ã¡Ó∫–æﬂ ¥ÎªÛ2017</span></p></div><!-- 2018-01-11¿•æÓøˆµÂ∏∂≈© -->
        <!-- info -->
        <div class="ft_info_wrap">
            <!-- pc -->
            <div class="ft_info pc_info">
                <span class="first_be">¥Î«•¿ÃªÁ  ¿Ãøµ¥ˆ</span>
                <span>ªÁæ˜¿⁄µÓ∑œπ¯»£  214-81-96569</span>
                <span>º≠øÔΩ√ ∞≠≥≤±∏ ∞≠≥≤¥Î∑Œ 318(ø™ªÔµø) ≈∏øˆ837∫Ùµ˘ 8,9√˛</span>
                <span>T.  02-585-1114</span>
                <span>F.  02-598-1116</span>
                <span class="first_be">E.  webmaster@hsd.co.kr</span>
                <span>«—º‹ µµΩ√∂Ù ∞Ì∞¥ºæ≈Õ  02-585-1114</span>
                <span>¿¸±π√¢æ˜º≥∏Ì»∏  1811-0188</span>
                <span>¥‹√º¡÷πÆ  1644-3288</span>
            </div>
            <!-- //pc -->
            <!-- mobile -->
            <div class="ft_info mo_info">
                <div class="mo_info_list">
                    <p class="btn_toggle">
                        <a href="#none">«—º‹ ªÁæ˜¿⁄ ¡§∫∏</a>
                    </p>
                    <div class="mo_info_on">
                        <span class="mo_bl">¥Î«•¿ÃªÁ  ¿Ãøµ¥ˆ</span>
                        <span>ªÁæ˜¿⁄µÓ∑œπ¯»£  214-81-96569</span>
                        <br/>
                        <span class="mo_bl">º≠øÔΩ√ ∞≠≥≤±∏ ∞≠≥≤¥Î∑Œ 318(ø™ªÔµø) ≈∏øˆ837∫Ùµ˘ 8,9√˛</span>
                        <br/>
                        <span class="mo_bl">T.  02-585-1114</span>
                        <span>F.  02-598-1116</span>
                        <br/>
                        <span class="mo_bl">E.  webmaster@hsd.co.kr</span>
                        <div class="mo_info_call">
                            <dl>
                                <dt>«—º‹ ∞Ì∞¥ºæ≈Õ</dt>
                                <dd>02-585-1114</dd>
                            </dl>
                            <dl>
                                <dt>¿¸±π√¢æ˜º≥∏Ì»∏</dt>
                                <dd>1811-0188</dd>
                            </dl>
                            <dl>
                                <dt>¥‹√º¡÷πÆ</dt>
                                <dd>1644-3288</dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //mobile -->

            <p class="copyright">COPYRIGHT<span>&copy;</span>¢ﬂ«—º‹. ALL RIGHTS RESERVED.</p>

            <div class="ft_sns">
                <a href="https://www.instagram.com/hansot_official/" target="_blank" title="ªı √¢ ø≠∏≤" class="sns_insta_02" target="_blank" title="ªı √¢ ø≠∏≤" ><span class="blind">instagram</span></a>
                <a href="https://www.facebook.com/hansotOfficial/?ref=ts&fref=ts" target="_blank" class="sns_face_02" target="_blank" title="ªı √¢ ø≠∏≤" ><span class="blind">facebook</span></a>
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
>>>>>>> master
</body>
</html>