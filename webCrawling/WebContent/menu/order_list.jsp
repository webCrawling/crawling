<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
   String id =(String)session.getAttribute("id");
   String phone = request.getParameter("phone");
   
   String menu = null;
   int price = 0;
   
   // 주문 내역 가져오기
   String[] check = request.getParameterValues("check");   // check된 메뉴 목록
   String[] field = request.getParameterValues("field");   // check된 메뉴들의 가격
   String[] quan =request.getParameterValues("num");      
   // 가격을 int타입으로 파싱
   int[] parsing = new int[field.length];
   int[] quan_parsing=new int[quan.length];
   
   for(int i =0 ; i<quan.length ; i++) {
      quan_parsing[i] = Integer.parseInt(quan[i]);
      
   }
   
   for(int i =0 ; i<field.length ; i++) {
      parsing[i] = Integer.parseInt(field[i]);
   }
         
   // 총 금액   
   for(int i=0;i<check.length;i++) {   
      price += parsing[i]*quan_parsing[i];
   }

%>

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
<link rel="stylesheet" type="text/css" href="assets/css/mycss2.css" />
<link rel="stylesheet" type="text/css" href="./assets/css/ui.menu.css" />

</head>
<body>



<div id="my_container" class="my_sub_page"  style="margin-top:80px;">
<h1 class="my_h1"> <%=id%> &nbsp;회원님의 주문 내역 &nbsp; <img src="images/order.png" style="width:80px; height:60px;"></h1>

</div>

<div class="my_container2" style="margin-bottom:5px;">
<h3 id="h31">메뉴 </h3>  <h3 id="h32"> 가격 </h3><h3 id="h33"> 수량</h3>
</div>





<div class="my_container3" style="margin-left:280px">
<table>
<% for(int i = 0 ; i<field.length ; i++){
     
      out.println("<tr><td style='width:250px;' align='center'><h4 id='h41'>"+check[i]+"</h4></td><td><h4 id='h42' >"+field[i]+"</h4></td><td><h4 id='h43'>"+quan[i]+"</h4></td></tr>");
      
}%>
</table>
<div class="my_container4">

<h2>총 가격</h2><br>
<%=price %>원

</div>

<input type="button" class="my2" value="확인" onclick="javascript:location.href='home.go'"/>



</div>


 

    

	
</body>
</html>