<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../views/fragments/header.jsp"/>
<div class="container-fluid">
    <jsp:include page="fragments/sidebar.jsp"/>
    <div class="col-md-10 row center-block">
        <c:forEach items="${products}" var="product">
            <div class="col-md-2 col-xs-6">
                <div class="thumbnail text-center">
                    <a href="/product/${product.id}">
                        <img src="${product.images[0].url}" class="imkek img-responsive">
                        <p>${product.title}</p>
                        <span class="stylefont ">${product.price}$</span>
                    </a>
                    <div class="  nav">
                        <ul>
                            <a href="#">add to <i class="fa fa-shopping-cart"></i></a>
                        </ul>
                    </div>
                </div>
            </div>

        </c:forEach>

    </div>
</div>

<jsp:include page="../views/fragments/footer.jsp"/>
<jsp:include page="fragments/scripts.jsp"/>


</body>

</html>