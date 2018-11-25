<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>

<head>
   <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />

    <!-- SNS LINK -->
    <meta property="og:type" content="website" />
    <meta property="og:title" content="" />
    <meta property="og:url" content="" />
    <meta property="og:image" content="" />
    <meta property="og:description" content="" />
    <!--// SNS LINK -->

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="3caca266-b988-4ce5-a3db-343784207d4a" /><title>주문 내역</title>

    <link rel="icon" href="assets/images/common/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" type="text/css" href="assets/css/ui.common.css" />
<link rel="stylesheet" type="text/css" href="assets/css/swiper.min.css" />
<link rel="stylesheet" type="text/css" href="assets/css/mycss.css" />
<link rel="stylesheet" type="text/css" href="./assets/css/ui.menu.css" />

</head>
<body>

<%

	
    out.println("</br>"+"<a href="+"memberList.am"+">회원 관리</a><br>");

    out.println("</br>"+"<a href="+"deliver_admin.am"+">배달 관리</a>");
 
%>

<div id="my_container" class="my_sub_page" >
<h1 class="my_h1"> Manager Dash board </h1>

</div>

<div class="my_container2">
<h3 id="h31">메뉴 </h3>  <h3 id="h32"> 가격 </h3><h3 id="h33"> 수량</h3>
</div>


<input type="button" class="my2" value="확인했습니다." onclick="javascript:location.href='home.do'"/>


	
</body>
</html>