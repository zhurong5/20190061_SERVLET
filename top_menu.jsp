<%@ page contentType="text/html;charset=utf-8" %>

<style>
    .navbar-header .navbar-brand {
        color: black;
    }
</style>
<nav class="navbar navbar-expand navbar-white bg-white">
    <div>
        <a href="./index.jsp">
            <img src="image\apple_logo_icon_168588.png" class="img-fluid" alt="main_image">
        </a>
    </div>

    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="./index.jsp">스토어</a>
            <a class="navbar-brand" href="index.jsp">상품목록(기본 홈)</a>
            <a class="navbar-brand" href="https://www.apple.com/kr/ipad/" target="_blank">iPad</a>
            <a class="navbar-brand" href="./index.jsp" target="_blank">iPhone</a>
            <a class="navbar-brand" href="./index.jsp" target="_blank">Watch</a>
            <a class="navbar-brand" href="./index.jsp" target="_blank">AirPods</a>
            <a class="navbar-brand" href="/BoardListAction.do?pageNum=1">고객지원</a>
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
<%-- CLASS는 스타일 적용 시에 사용되는 이름, 중첩 가능 --%>
