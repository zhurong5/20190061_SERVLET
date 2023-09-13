<%@ page contentType = "text/html;charset=utf-8" %>

<%! String greeting = "Welcome to Web Shopping Mall";
        String tagline = "하단 페이지 : 확인";%>
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-3">
                    <%=greeting%>
                </h1>
            </div>
        </div>
        <div class="card bg-dark text-white">
            
            <img src="image\bbback.png" class="card-img" alt="...">
            <div class="card-img-overlay">
                <h5 class="card-title">2023 S/W</h5>
                <p class="card-text">SALE</p>
            </div>
        </div>
        <div class="list-group">
            <a href="#" class="list-group-item list-group-item-action active" aria-current="true">지포스 3060 시리즈</a>
            <a href="#" class="list-group-item list-group-item-action">지포스 3070 시리즈</a>
        </div>

        <div class="container">
            <div class="text-center">
                <h3>
                    <%=tagline%>
                </h3>
            </div>
            <hr>
        </div>