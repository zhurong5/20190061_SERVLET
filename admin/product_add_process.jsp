<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>

<%
    request.setCharacterEncoding("UTF-8");

    String productId = request.getParameter("productId");
    String name = request.getParameter("name");
    String unitPrice = request.getParameter("unitPrice");
    String description = request.getParameter("description");
    String manufacturer = request.getParameter("manufacturer");
    String category = request.getParameter("category");
    String unitsInStock = request.getParameter("unitsInStock");
    String condition = request.getParameter("condition");

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

    ProductRepository dao = ProductRepository.getInstance(); // dao 객체에 새로운 객체

    Product newProduct = new Product();
    newProduct.setProductId(productId);
    newProduct.setPname(name);
    newProduct.setUnitPrice(price);
    newProduct.setDescription(description);
    newProduct.setManufacturer(manufacturer);
    newProduct.setCategory(category);
    newProduct.setUnitsInStock(stock);
    newProduct.setCondition(condition);

    dao.addProduct(newProduct);

    response.sendRedirect("index_ad.jsp"); // request 내장 객체는 받을 때 | response 내장 객체는 반응 
%>
