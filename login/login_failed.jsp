<%@ page contentType = "text/html;charset=utf-8" %>
<%
    request.getRequestDispatcher("login.jsp?error=1").forward(request, response);
%>
