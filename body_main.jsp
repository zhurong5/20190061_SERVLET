<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! 
    String greeting = "<span style='font-size: 40px;'><strong>스토어</strong>. 좋아하는 Apple 제품을<br>구입하는 가장 좋은 방법.";
    String tagline = "AppleKorea";
%>

<br><br>

<div class="container">
    <div class="jumbotron">
        <div class="container">
            <h3 class="display-4">
                <%=greeting%>
            </h3>
        </div>
    </div>
</div>

<br><br>

<div class="card bg-dark text-white">
    <img src="image\iPhone15pro_allcolor.jpg" class="card-img" alt="...">
    <div class="card-img-overlay">
        <h5 class="card-title">iPhone 15 Pro</h5>
        <p class="card-text">₩1,550,000부터</p>
    </div>
</div>

<br><br><br>

<%
ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%>

<div class="container">
    <div class="row" align="center">
        <%
        for (int i = 0; i < listOfProducts.size(); i++) {
            Product product = listOfProducts.get(i);
            int unitPrice = product.getUnitPrice();
            String formattedPrice = String.format("%,d", unitPrice); // 가격을 쉼표로 구분하여 형식화
        %>
        <div class="col-md-4">
            <div class="card bg-white text-white border-0">
                <img src="image/product/<%=product.getProductId()%>.jpg" class="card-img" alt="...">
                <div class="card-img-overlay">
                    <h5 class="card-title"></h5>
                    <p class="card-text"></p>
                </div>
            </div>
            <br>
            <h3><%=product.getPname()%></h3> <!-- 상품 이름 -->
            <p><%=product.getDescription()%></p> <!-- 상품 정보 -->
            <p><%=formattedPrice%> 부터</p> <!-- 형식화된 가격을 출력 -->
            <p><a href="product_detail.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a></p>
        </div>
        <%
        }
        %>
    </div>
    <hr>
</div>

<div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active" aria-current="true">최신 제품. 따끈따끈한 신제품 이야기.</a>
    <a href="#" class="list-group-item list-group-item-action">모든 모델. 당신의 선택은?</a>
    <a href="#" class="list-group-item list-group-item-action">쇼핑 안내. 결정을 못하겠다면 여기에서.</a>
    <a href="#" class="list-group-item list-group-item-action">액세서리. 즐겨 사용하는 기기들과 완벽하게 페어링되는 여러 가지 필수품.</a>
</div>

<div class="container">
    <div class="text-center">
        <h3><%=tagline%></h3>
    </div>
    <hr>
</div>