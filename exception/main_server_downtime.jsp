<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="example.*" %>
<%@ page import="java.util.Date" %>
<%@ page buffer="1kb" autoFlush="true" %>

<%
    HelloWorld h = new HelloWorld();
%>

<script>
    window.open("popup/popup1.jsp", "popup", "width=365, height=250, left=0, top=0")
</script>

<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <title>Apple</title>
</head>
<body>
    <div class="container">
        <%-- 메시지는 = <%= h.hello() %> 입니다 --%>
        <%@ include file="/top_banner.jsp" %>
        
    <%-- top_menu.jsp --%>
    <style>
        .navbar-header .navbar-brand {
            color: black;
        }
    </style>
    <nav class="navbar navbar-expand navbar-white bg-white">
        <div>
            <img src="image\apple_logo_icon_168588.png" class="img-fluid" alt="main_image">
        </div>
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="./index.jsp">스토어</a>
                <a class="navbar-brand" href="https://www.apple.com/kr/ipad/" target="_blank">iPad</a>             <a class="navbar-brand" href="./index.jsp" target="_blank">iPhone</a>
                <a class="navbar-brand" href="./index.jsp" target="_blank">Watch</a>
                <a class="navbar-brand" href="./index.jsp" target="_blank">AirPods</a>
                <a class="navbar-brand" href="./index.jsp" target="_blank">고객지원</a>
                <a class="navbar-brand" href="admin/index_ad.jsp">관리자모드</a>
            </div>
        </div>
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                장바구니
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="#">주문</a>
                <a class="dropdown-item" href="#">관심목록</a>
                <a class="dropdown-item" href="#">계정</a>
            </div>
        </div>
    </nav>
    <%-- top_menu.jsp --%>
        
        <%-- 이 부분을 에러 메시지로 교체 --%>
        <div class="alert alert-danger mt-4">
            <h1>죄송합니다, 현재 서버 점검 중입니다.</h1>
            <p>서버가 현재 작동 중이 아니거나 예상치 못한 문제가 발생했습니다.</p>
            <p>불편을 드려 죄송합니다. 나중에 다시 시도해 주세요.</p>
            <%-- 추가적인 정보나 문구를 여기에 포함할 수 있습니다. --%>
        </div>
        <%-- 에러 메시지 끝 --%>
        <%@ include file="/footer.jsp" %>
    </div>
</body>
</html>
