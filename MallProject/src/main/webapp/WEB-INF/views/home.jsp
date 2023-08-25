<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/mall.css" rel="stylesheet" />
<title>Weverse</title>
</head>
<style>
table { width : 80%; margin-left:auto; margin-right:auto; }
#tblBoard{ border-collapse : collapse; }
#tblBoard th { background-color :white; color :black; border : 1px solid gray; }
#tblBoard td { border : 1px solid black; cursor : pointer; }
</style>
<body>
<input type=hidden name=id value="${id}">
<div class="navbar">
    <a href="/" id="logo">
        <img src="img/weverslogo.jpg" width="149">
    </a>
    <ul id="menu">
    	<li><a href="#">${review}</a></li>
    	<li><a href="#">${bbs}</a></li>
        <li><a href="#">장바구니</a></li>
        <li><a href="#">주문/배송조회</a></li>
        <li><a href="#">${infoline}</a></li>
        <li><a href="#">${inforeg}</a></li>
    </ul>
</div>



</div>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).on('click', '.product', function() {
    var productName = $(this).attr('num');
    document.location = "/product?num=" + encodeURIComponent(productName);
})
.on('click','#logout',function(){
    if(!confirm('정말로 로그아웃할까요?')){
        return false;
    } else {			
        document.location= "/logout";
    }
});
</script>
</html>