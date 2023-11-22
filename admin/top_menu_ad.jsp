<%@ page contentType = "text/html;charset=utf-8" %>

<style>
    .navbar-header .navbar-brand {
        color: black;
        }
</style>
<nav class="navbar navbar-expeand navbar-white bg-white">
    <div>
        <img src="image\apple_logo_icon_168588.png" class="img-fluid" alt="main_image">
    </div>
        <div class="container">
            
            <div class="navbar-header">
                
                <a class="navbar-brand" href="./index.jsp">스토어</a>
                <a class="navbar-brand" href="./index.jsp">회원 보기/추가/수정/삭제</a>
                <a class="navbar-brand" href="index_ad.jsp">상품 보기</a>
                <a class="navbar-brand" href="product_add.jsp">등록</a>
                <a class="navbar-brand" href="product_edit.jsp?edit=update">수정</a>
                <a class="navbar-brand" href="product_edit.jsp?edit=delete">삭제</a>            
                <a class="navbar-brand" href="../index.jsp">일반모드</a>

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
<%-- CLASS는 스타일 적용 시에 사용 되는 이름, 중첩 가능 --%>