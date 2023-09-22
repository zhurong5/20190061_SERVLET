<%@ page contentType = "text/html;charset=utf-8" %> <%-- 페이지 지시자 --%>
<%@ page import="example.*" %> 
<%@ page import="java.util.Date"%>
<%@ page buffer="1kb" autoFlush="true"%>

<%
    HelloWorld h = new HelloWorld();
%>
<%-- 자바는 하나의 함수라도 클래스로 만들어야 함 --%>
<script>
	window.open("popup/popup1.jsp", "popup", "width=365, height = 250, left = 0, top=0")
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
        <%--메시지는 = <%=h.hello() %> 입니다--%>
        <%@ include file="top_banner.jsp" %>
        <%@ include file="top_menu.jsp" %>
        <%@ include file="body_main.jsp" %>
        <%@ include file="footer.jsp" %>
        
        현재 페이지 버퍼 용량 : <%= out.getBufferSize() %> <br>
        남은 페이지 버퍼 용량 : <%= out.getRemaining() %>
    </body>
</html>
