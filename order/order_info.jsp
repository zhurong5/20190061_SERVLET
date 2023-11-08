<%@ page contentType="text/html; charset=utf-8"%>

<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <title>배송 정보</title>
    </head>
    <body>
        <jsp:include page="../top_menu.jsp" />
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-3">배송 정보</h1>
            </div>
        </div>
        <div class="container">
            <form action="order_info_process.jsp" class="form-horizontal" method="post">
                <input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>" />
                <div class="form-group row">
                    <label class="col-sm-2">성명</label>
                    <div class="col-sm-3">
                        <input name="name" type="text" class="form-control" />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">배송일</label>
                    <div class="col-sm-3">
                        <input name="shippingDate" type="date" class="form-control" id="shippingDate" />
                    </div>
                </div>

                <script>
                    var today = new Date();
                    var dd = String(today.getDate() + 1).padStart(2, '0'); // Get tomorrow date
                    var mm = String(today.getMonth() + 1).padStart(2, '0'); // January is 0!
                    var yyyy = today.getFullYear();
                    var minDate = yyyy+'-'+mm+'-'+dd;
                    document.getElementById("shippingDate").setAttribute("min", minDate);
                </script>

                <div class="form-group row">
                    <label class="col-sm-2">국가명</label>
                    <div class="col-sm-3">
                        <select name="country" class="form-control">
                            <option value="Korea">한국</option>
                            <option value="China">중국</option>
                            <option value="Japan">일본</option>
                            <option value="USA">미국</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">배송지</label>
                    <div class="col-sm-3">
                        <input type="text" id="sample4_postcode" placeholder="우편번호" name="zipCode">
                        <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
                        <input type="text" id="sample4_roadAddress" placeholder="도로명주소">
                        <input type="text" id="sample4_jibunAddress" placeholder="지번주소">
                        <span id="guide" style="color:#999;display:none"></span><br>
                        <input type="text" id="sample4_detailAddress" placeholder="상세주소" name="addressName">
                        <input type="text" id="sample4_extraAddress" placeholder="참고항목">
                    </div>
                    
                    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
                    <script>
                        function sample4_execDaumPostcode() {
                            new daum.Postcode({
                                oncomplete: function(data) {
                                    var roadAddr = data.roadAddress; // 도로명 주소 변수
                                    var extraRoadAddr = ''; // 참고 항목 변수

                                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                                        extraRoadAddr += data.bname;
                                    }
                                    if(data.buildingName !== '' && data.apartment === 'Y'){
                                       extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                    }
                                    if(extraRoadAddr !== ''){
                                        extraRoadAddr = ' (' + extraRoadAddr + ')';
                                    }

                                    document.getElementById('sample4_postcode').value = data.zonecode;
                                    document.getElementById('sample4_roadAddress').value = roadAddr;
                                    document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                                    
                                    if(roadAddr !== ''){
                                        document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                                    } else {
                                        document.getElementById("sample4_extraAddress").value = '';
                                    }

                                    var guideTextBox = document.getElementById("guide");
                                    if(data.autoRoadAddress) {
                                        var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                                        guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                                        guideTextBox.style.display = 'block';

                                    } else if(data.autoJibunAddress) {
                                        var expJibunAddr = data.autoJibunAddress;
                                        guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                                        guideTextBox.style.display = 'block';
                                    } else {
                                        guideTextBox.innerHTML = '';
                                        guideTextBox.style.display = 'none';
                                    }
                                }
                            }).open();
                        }
                    </script>
                </div>
                <div class="form-group row">
                    <div class="col-sm-offset-2 col-sm-10 ">
                        <a href="../cart/product_cart.jsp?cartId=<%=request.getParameter("cartId")%>" class="btn btn-secondary" role="button"> 이전 </a> 
                        <input type="submit" class="btn btn-primary" value="등록" />
                        <a href="order_cancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>