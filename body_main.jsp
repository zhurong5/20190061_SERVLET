<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page import="java.sql.*"%>
<%@ include file="db/db_conn.jsp"%>

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
//ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%>

<%
    ProductRepository dao = ProductRepository.getInstance(); // dao 객체에 따로 저장
    ArrayList<Product> listOfProducts = dao.getAllProducts();
%>

<div class="container">
    <div class="row" align="center">
        <%
        String sql = "select * from product"; // 조회
		pstmt = conn.prepareStatement(sql); // 연결 생성
		rs = pstmt.executeQuery(); // 쿼리 실행
		while (rs.next()) { // 결과 ResultSet 객체 반복

//        for (int i = 0; i < listOfProducts.size(); i++) {
//            Product product = listOfProducts.get(i);
//            int unitPrice = product.getUnitPrice();
//            String formattedPrice = String.format("%,d", unitPrice); // 가격을 쉼표로 구분하여 형식화
        %>
        <div class="col-md-4">
            <div class="card bg-white text-white border-0">
                <img src="image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                <div class="card-img-overlay">
                    <h5 class="card-title"></h5>
                    <p class="card-text"></p>
                </div>
            </div>
            <h3><%=rs.getString("p_name")%></h3>
            <p><%=rs.getString("p_description")%>
            <p><%=rs.getString("p_UnitPrice")%>원
            <p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>

        </div>
 	    <%
        } // 반복문 끝난 이후 db 연결 종료	
        if (rs != null)
            rs.close();
        if (pstmt != null)
            pstmt.close();
        if (conn != null)
            conn.close();
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