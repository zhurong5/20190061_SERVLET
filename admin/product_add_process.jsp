<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.Enumeration" %>

<%@ page import="java.io.File" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.nio.file.Files" %>
<%@ page import="java.nio.file.StandardCopyOption" %>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>

<%
    request.setCharacterEncoding("UTF-8");

    String filename = "";
    String realFolder = request.getServletContext().getRealPath("image/product"); // 기본 경로
    String adminFolder = request.getServletContext().getRealPath("admin/image/product"); // 관리자 폴더 경로
    String encType = "utf-8"; // 인코딩 타입
    int maxSize = 5 * 1024 * 1024; // 최대 업로드될 파일의 크기 5MB

    DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
    MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, policy);

    String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");

    Integer price;

    if (unitPrice.isEmpty()) // 데이터 타입을 문자열 -> 정수로 변환하는 과정
        price = 0;
    else
        price = Integer.valueOf(unitPrice); // ‘0’을 0으로 바꿔준다.

    long stock;

    if (unitsInStock.isEmpty()) // 데이터 타입을 문자열 -> 정수로 변환하는 과정
        stock = 0;
    else
        stock = Long.valueOf(unitsInStock);

    Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);

String sql = "insert into product values(?,?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql); // 쿼리문 몸체만 넣기
	pstmt.setString(1, productId); // 각 필드 설정 - ? 순서대로
	pstmt.setString(2, name);
	pstmt.setString(3, unitPrice);
	pstmt.setString(4, description);
	pstmt.setString(5, manufacturer);
    	pstmt.setString(6, category);
	pstmt.setString(7, unitsInStock);
	pstmt.setString(8, condition);
	pstmt.setString(9, fileName);
	pstmt.executeUpdate(); // 최종 SQL 쿼리 실행	
	if (pstmt != null)
 		pstmt.close();
 	if (conn != null)
		conn.close();

    response.sendRedirect("index_ad.jsp"); // request 내장 객체는 받을 때 | response 내장 객체는 반응 
%>
