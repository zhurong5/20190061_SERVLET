<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting = "<span style='font-size: 40px;'><strong>스토어</strong>. 좋아하는 Apple 제품을<br>구입하는 가장 좋은 방법.";
        String tagline = "AppleKorea";%>
<br><br>
<div class="container">
    
    <div class="jumpbotron">
        <div class="container">
            <h3 class="display-4">
                <%=greeting%>
            </h3>
        </div>
    </div>
</div>
<br><br><br>
<%
	ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%> 	
<div class="container">
    <div class="row" align="center">
        <%
            for(int i = 0;i<listOfProducts.size();i++){
            Product product = listOfProducts.get(i);           
        %>
    <div class="col-md-4">
        <h3><%=product.getPname()%></h3>
		<p><%=product.getDescription()%>
		<p><%=product.getUnitPrice()%>원
    </div>
        <%
            }
        %>
    </div>
    <hr>
</div>

        <div class="card bg-dark text-white">
            
            <img src="image\iPhone15pro_allcolor.jpg" class="card-img" alt="...">
            <div class="card-img-overlay">
                <h5 class="card-title">iPhone 15 Pro</h5>
                <p class="card-text">₩1,550,000부터</p>
            </div>
        </div>
        <div class="list-group">
            <a href="#" class="list-group-item list-group-item-action active" aria-current="true">최신 제품. 따끈따끈한 신제품 이야기.</a>
            <a href="#" class="list-group-item list-group-item-action">모든 모델. 당신의 선택은?</a>
            <a href="#" class="list-group-item list-group-item-action">쇼핑 안내. 결정을 못하겠다면 여기에서.</a>
            <a href="#" class="list-group-item list-group-item-action">액세서리. 즐겨 사용하는 기기들과 완벽하게 페어링되는 여러 가지 필수품.</a>
        </div>

        <div class="container">
            <div class="text-center">
                <h3>
                    <%=tagline%>
                </h3>
            </div>
            <hr>
        </div>