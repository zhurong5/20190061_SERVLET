<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <title>상품 삭제</title>
</head>
<body>
    <jsp:include page="top_menu_ad.jsp" />
    
    <div class="container">
        <div class="row" align="center">
            <%@ include file="../db/db_conn.jsp"%>
            
            <%
                // 요청 매개변수에서 상품 ID를 가져옴
                String productId = request.getParameter("id");

                // ID가 null이 아니고 비어있지 않은지 확인
                if (productId != null && !productId.isEmpty()) {
                    try {
                        // 삭제 쿼리를 준비
                        String deleteSql = "DELETE FROM product WHERE p_id = ?";
                        PreparedStatement deletePstmt = conn.prepareStatement(deleteSql);

                        // 상품 ID 매개변수를 설정
                        deletePstmt.setString(1, productId);

                        // 삭제 쿼리 실행
                        int rowsAffected = deletePstmt.executeUpdate();

                        // 삭제가 성공했는지 확인
                        if (rowsAffected > 0) {
            %>
                            <div class="alert alert-success" role="alert">
                                상품이 성공적으로 삭제되었습니다.
                            </div>
            <%
                        } else {
            %>
                            <div class="alert alert-danger" role="alert">
                                상품 삭제 중 오류가 발생했습니다.
                            </div>
            <%
                        }

                        // 준비된 문 닫기
                        deletePstmt.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
            %>
                        <div class="alert alert-danger" role="alert">
                            데이터베이스 오류: <%= e.getMessage() %>
                        </div>
            <%
                    }
                } else {
            %>
                    <div class="alert alert-warning" role="alert">
                        상품 ID가 올바르지 않습니다.
                    </div>
            <%
                }

                // 데이터베이스 연결 닫기
                if (conn != null) {
                    conn.close();
                }
            %>
        </div>
    </div>
    
    <script type="text/javascript">
        setTimeout(function(){
            location.href = "product_edit.jsp?edit=delete";
        }, 2000); // 2초 후에 이동
    </script>
    
    <jsp:include page="footer_ad.jsp" />
</body>
</html>