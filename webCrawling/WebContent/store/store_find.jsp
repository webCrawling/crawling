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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="8e0910b5-cef9-4e60-adf7-7c25f3a77a84" /><title>한솥 > STORE > 주변점포찾기</title>

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

    

    <link rel="stylesheet" type="text/css" href="assets/css/ui.store.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/ui.pop.css"/>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-111772169-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];

      function gtag() {
        dataLayer.push(arguments);
      }

      gtag('js', new Date());

      gtag('config', 'UA-111772169-1');
    </script>

    <!-- Global site tag (gtag.js) - AdWords: 864658366 -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=AW-864658366"></script>
    <script>
      window.dataLayer = window.dataLayer || [];

      function gtag() {
        dataLayer.push(arguments);
      }

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
                    <a href="login.do">로그인</a>
                    </li>
                <li>
                    <a href="join.do">회원가입</a>
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
                <h1><a href="home.go"><span class="blind">한솥</span></a></h1>
            </div>
            <!-- gnb -->
            <section id="gnb" class="area_gnb mo_version">
                <!-- 모바일 로그인/회원가입 -->
                <div class="m_area_flex">
							<ul>
								<li><a href="login.do">로그인</a></li>
								<li><a href="join.do">회원가입</a></li>

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
        
<div class="content store">
    <!-- store_find -->
    <section class="store_find">
        <div class="store_wrap">
            <!-- title -->
            <div class="ontitle">
                <h2 class="h2_tit h2_01 mo_version">주변점포찾기</h2>
                <!-- 주변점포찾기 Form -->
                <form id="searchForm" name="searchForm" action="store_find" method="get" onsubmit="searchStore(1);return false;"><input type="hidden" id="idx" name="idx" value=""/>
                    <dl class="store_form mo_version" id="map_position">
                        <div class="in_box">
                            <dl class="in_box_th">
                                <dt class="blind">주변점포찾기</dt>
                                <!-- 시/도 선택 -->
                                <dd class="store_select">
                                <span class="select">
                                    <select class="classic" title="시/도 선택 구분" id="sido" name="sido">
                                        <option value="">시/도 선택</option>
                                    </select>
                                </span>
                                </dd>
                                <!-- //시/도 선택 -->
                                <!-- 군/구 선택 -->
                                <dd class="store_select last_selcet">
                                <span class="select">
                                    <select class="classic" title="구/군 선택 구분" id="gungoo" name="gungoo">
                                        <option value="">구/군 선택</option>
                                    </select>
                                </span>
                                </dd>
                                <!-- //군/구 선택 -->
                                <!-- 검색창 -->
                                    <dd class="store_search">
                                    <div class="in_box">
                                    <span class="form text">
                                        <input type="text" maxlength="16" id="searchKeyword" name="searchKeyword">
                                        <label for="searchKeyword">검색어 입력</label>
                                        <a href="#none" onclick="searchStore(1);return false;"
                                           class="btn_overlap se_box"><span class="blind">검색아이콘</span></a>
                                    </span>
                                    </div>
                                </dd>
                                <!-- //검색창 -->
                                <!-- btn -->
                                <dd class="btn_store">
                                    <div class="btn_wrap">
                                        <span class="btn btn_st03"><a href="#none"
                                                                      onclick="searchStore(1);return false;"
                                                                      class="c_02" id="btn_search">매장찾기</a></span>
                                    </div>
                                </dd>
                                <!-- //btn -->
                            </dl>
                        </div>
                    </dl>
                <div>
</div></form><!-- //주변점포찾기 Form -->
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

    <!--검색 결과 테이블-->
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

    <!-- 신규 가맹점 -->
    <section class="store_new">
        <div class="store_new_wrap">
            <h2 class="h2_tit fz_01">
                <span class="s_block">한솥의</span>
                <span class="s_block"><em class="f_b">신규 가맹점</em>을</span>
                <span class="s_block">소개합니다</span>
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
    <!-- //신규 가맹점 -->
</div>

<!-- 팝업 -->
<div id="map_popup" style="display:none;">
    <div class="marker_wrap">
        <div class="store_info_wrap" style="display:block;">
            <div class="store_info_de">
                <h3 class="name" id="pop_store_name"></h3>
                <p class="info_add" id="pop_store_address"></p>
                <p class="info_call" id="pop_store_phone"></p>
                <div class="detail">
                    <a href="javascript:openLayerPopup('pop-store');" class="btn_de">자세히 보기</a>
                </div>
                <a href="#none" class="btn_close" onclick="closeOverlay();"><span class="blind">close</span></a>
            </div>
        </div>
    </div>
</div>
<!-- // 팝업-->

<!-- 자세히보기 popup -->
<div class="pop-wrap" id="pop-store" style="display:none">
    <dl class="pop-store-wrap">
        <dt class="pop-header fz_02"><span id="pop2_store_name"></span>
            <a href="javascript:closeLayerPopup();" class="btnp-close">close</a>
        </dt>
        <dd class="pop-box">
            <div class="pop-cont">
                <div class="pop-msg">
                    <dl class="pop-store-info">
                        <dt>주소</dt>
                        <dd id="pop2_store_address"></dd>
                        <dt>전화번호</dt>
                        <dd id="pop2_store_phone"></dd>
                        <dt>영업시간</dt>
                        <dd id="pop2_store_business_hour"></dd>
                    </dl>
                    <!-- 매장이벤트 -->
                    <dl class="shop_event">
                        <dt>신규점 오픈 이벤트</dt>
                        <dd id="pop2_store_event"></dd>
                    </dl>
                    <!-- //매장이벤트 -->
                    <!-- 좌석/주차 -->
                    <dl class="shop_etc">
                        <dt><span class="blind">좌석여부</span></dt>
                        <dd class="seat" id="pop2_store_seat"></dd>
                        <dt><span class="blind">주차여부</span></dt>
                        <dd class="car" id="pop2_store_car"></dd>
                    </dl>
                    <!-- //좌석/주차 -->
                </div>
            </div>
        </dd>
    </dl>
</div>
<!-- // 자세히보기 popup -->

<!-- 검색결과 없을경우 popup -->
<div class="pop-wrap" id="pop-search" style="display:none">
    <dl class="pop-search-wrap">
        <dt class="pop-header fz_02"></dt>
        <dd class="pop-box">
            <div class="pop-cont">
                <div class="pop-msg">
                    검색결과가 없습니다.
                </div>
                <a href="javascript:closeLayerPopup();" class="btnp-close">확인</a>
            </div>
        </dd>
    </dl>
</div>
<!-- //검색결과 없을경우 popup -->

<script type="text/javascript">
  $(function () {
    mapResize();
    currentLoc();
    newStore(1);    // 신규 가맹점
  });

  var useCurrentLoc = true;
  var lat, lng;
  var map, markerOptions, infowindow, contentString;
  var mapContainer = document.getElementById("map"); // 지도를 표시할 div
  var eventStoreIdx = $.trim('');    // 매장이벤트에서 넘어온 idx
  var markerList = [];

  // 현재위치
  function currentLoc() {

    if (eventStoreIdx != "" && !isNaN(parseInt(eventStoreIdx))) {
      chanageLoc(eventStoreIdx);
    } else {
      lat = 35.155562;   // 위치 검색안될시 기본노출 : 구서동
      lng = 129.050999;

      // HTML5의 geolocation으로 사용할 수 있는지 확인합니다
      if (navigator.geolocation) {
        // GeoLocation을 이용해서 접속 위치를 얻어옵니다
        navigator.geolocation.getCurrentPosition(function (position) {
          lat = position.coords.latitude; // 현재 위도
          lng = position.coords.longitude; // 현재 경도
        });
      }

      loadMap();
    }
  }

  // 지도생성
  function loadMap() {
    var loc = new naver.maps.LatLng(lat, lng);
    var mapOption = {
      center: loc.destinationPoint(0, 500), // 지도의 중심좌표
      zoom: 9, // 지도의 확대 레벨
      minZoom: 3, // 지도의 최소 레벨
      logoControl: false,        // naver 로고
      mapDataControl: false      // 저작권 컨트롤
    };

    // 지도를 생성한다
    map = new naver.maps.Map(mapContainer, mapOption);
  }

  // 정보창열기
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
        $("#pop2_store_event").text("이벤트가 없습니다.");
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


      // 클릭한 지점이 중심으로 오도록 이동
      //map.setCenter(moveLatLon);
      var moveLatLon = new naver.maps.LatLng(data.lat, data.lng);
      map.panTo(moveLatLon);
    });
  }

  // 정보창닫기
  function closeOverlay() {
    if (infowindow != null) infowindow.close();
  }

  // 지도사이즈
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

  // 매장찾기
  function searchStore(pageNo) {
    useCurrentLoc = false;
    $("#idx").val("");
    /*console.log($("input[name='searchCondition']:checked").val());
    if($("input[name='searchCondition']:checked").val() == 'address') { //주소로 검색

    } else { //매장명으로 검색

    }*/

    for (var i = 0 ; i < markerList.length ; i++) {
      markerList[i].setMap(null);
    }


    $.getJSON("/api/store_search?" + $("#searchForm").serialize(), function (data) {
      if (data.length > 0) {

        $.each(data, function (key, val) {
          // 지도에 마커를 생성하고 표시한다.
          markerOptions = {
            position: new naver.maps.LatLng(val.lat, val.lng).destinationPoint(0, 0),
            map: map,
            icon: {
              url: '../assets/images/common/icon_map.png',
              size: new naver.maps.Size(50, 52),
              scaledSize: new naver.maps.Size(42, 52),

            }
          };

          // 마커에 클릭이벤트 등록
          var marker = new naver.maps.Marker(markerOptions);
          naver.maps.Event.addListener(marker, 'click', function () {
            // 오버레이 생성
            makeOverlay(val.idx);
          });

          markerList.push(marker);

        });
      }

    });

    renderSearchResult(pageNo);

  }

  //매장찾기 리스트 렌더
  function renderSearchResult(pageNo) {
    $.getJSON("/api/store_search/" + pageNo + "?" + $("#searchForm").serialize(), function (data) {
      console.log(data);
      var list = "";

      if (data.list.length > 0) {

        list += '<tr>';
        list += ' <th>매장명</th>';
        list += ' <th>연락처</th>';
        list += ' <th>주소</th>';
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

  // 신규 가맹점 _ 위치변경
  function chanageLoc(idx) {
    useCurrentLoc = false;
    $("#idx").val(idx);
    loadMap();

    $.getJSON("/api/store_search?" + $("#searchForm").serialize(), function (data) {
      if (data.length > 0) {

        $.each(data, function (key, val) {
          // 지도에 마커를 생성하고 표시한다.
          console.log(val)

          markerOptions = {
            position: new naver.maps.LatLng(val.lat, val.lng).destinationPoint(0, 0),
            map: map,
            icon: {
              url: 'assets/images/common/icon_map.png',
              size: new naver.maps.Size(50, 52),
              scaledSize: new naver.maps.Size(42, 52),

            }
          };

          // 마커에 클릭이벤트 등록
          var marker = new naver.maps.Marker(markerOptions);
          naver.maps.Event.addListener(marker, 'click', function () {
            // 오버레이 생성
            makeOverlay(val.idx);
          });

          markerList.push(marker);

        });

        // 마커의 중심을 이동 시킵니다.
        if (useCurrentLoc === false) {
          lat = data[0].lat;
          lng = data[0].lng;
        }

        makeOverlay(data[0].idx);
      }

    });

    // 스크롤 위치 이동
    var offset = $("#map_position").offset();
    $("html, body").animate({scrollTop: offset.top}, 400);
  }


  // 신규 가맹점
  function newStore(pageNo) {
    $.ajax({
      type: 'get',
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
            list += '       <dd><span>이벤트가 없습니다</span></dd>';
          }
          list += '   </dl>';
          list += '   <a href="#none" class="location" onclick="chanageLoc(' + val["idx"] + ');">위치보기</a>';
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

  // 신규매장 페이징
  function paging(data) {

    var txt = '';
    txt += '<div class="pageinate">';
    txt += '    <div class="cont">';

    // 이전페이지
    if (data.prevPageNo == data.currentPageNo) {
      txt += '        <a href="#none" class="arr prev off">이전페이지</a>';
    } else {
      txt += '        <a href="javascript:newStore(' + data.prevPageNo + ')" class="arr prev">이전페이지</a>';
    }

    for (var i = data.startPageNo; i <= data.endPageNo; i++) {
      if (data.currentPageNo == i) {
        txt += '        <a href="#none" class="active">' + i + '</a>';
      } else {
        txt += '        <a href="javascript:newStore(' + i + ')">' + i + '</a>';
      }
    }

    // 다음페이지
    if (data.lastPageNo == data.currentPageNo) {
      txt += '        <a href="#none" class="arr next off">다음페이지</a>';
    } else {
      txt += '        <a href="javascript:newStore(' + data.nextPageNo + ')" class="arr next">다음페이지</a>';
    }
    txt += '    </div>';
    txt += '</div>';

    $(".indi_wrap > div").remove();
    $(".indi_wrap").append(txt);

  }

  // 매장 검색결과 페이징
  function searchPaging(data) {

    var txt = '';
    txt += '<div class="pageinate">';
    txt += '    <div class="cont">';

    // 이전페이지
    if (data.prevPageNo == data.currentPageNo) {
      txt += '        <a href="#none" class="arr prev off">이전페이지</a>';
    } else {
      txt += '        <a href="javascript:renderSearchResult(' + data.prevPageNo + ')" class="arr prev">이전페이지</a>';
    }

    for (var i = data.startPageNo; i <= data.endPageNo; i++) {
      if (data.currentPageNo == i) {
        txt += '        <a href="#none" class="active">' + i + '</a>';
      } else {
        txt += '        <a href="javascript:renderSearchResult(' + i + ')">' + i + '</a>';
      }
    }

    // 다음페이지
    if (data.lastPageNo == data.currentPageNo) {
      txt += '        <a href="#none" class="arr next off">다음페이지</a>';
    } else {
      txt += '        <a href="javascript:renderSearchResult(' + data.nextPageNo + ')" class="arr next">다음페이지</a>';
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