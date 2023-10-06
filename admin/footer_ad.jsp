<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="example.*" %> 

<footer class="container">
    <p>
         <br>&copy; 대표: 오주영, 고유번호: 20190061, 연락처: 010-4804-4599, 이메일주소: rong5@sungkyul.ac.kr<br>
    <%
        ShopTime time = new ShopTime();
    %>
    오늘 날짜와 시간: <%=time.timenow() %>             
    </p>
</footer>