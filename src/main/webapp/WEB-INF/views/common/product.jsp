<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<jsp:include page="../fragments/header.jsp"/>
<div class="container-fluid base-light  content">
    <jsp:include page="../fragments/sidebar.jsp"/>
    <div class="col-md-9 col-lg-10 " ng-controller="ProductCtrl">
        <div class="panel-primary   ">
            <div class="panel-heading">
                <h3 class="panel-title">
                    <a href="/" class="btn btn-success btn-xs"><i class="fa fa-arrow-left"></i></a>
                    Product</h3>
            </div>
            <div class="white panel-body">
                <div class="col-md-12 panelTop">
                    <div class="col-md-4">
                        <img src="${product.images[0].url}" class="img-responsive">
                    </div>

                    <div class="col-md-8">
                        <h2>${product.title}</h2>
                        <p>${product.description}</p>
                    </div>
                </div>

                <div class="col-md-12 panelBottom">
                    <div class="col-md-6 text-center">
                        <sec:authorize access="!isAuthenticated()">
                            <a href="/login" class="btn btn-lg btn-add-to-cart">Login to add product to <span
                                    class="fa fa-shopping-cart"></span>
                            </a>
                        </sec:authorize>
                        <sec:authorize access="isAuthenticated()">
                            <sec:authorize access="hasRole('USER')">
                                <button ng-click="addToCart(${product.id})" class="btn btn-lg btn-success"><span
                                        class="fa fa-shopping-cart"></span> add to cart
                                </button>
                            </sec:authorize>
                        </sec:authorize>
                        <sec:authorize access="isAuthenticated()">
                            <sec:authorize access="hasRole('ADMIN')">
                                <a href="${product.id}/edit" class="btn btn-lg btn-add-to-cart"><span
                                        class="fa fa-edit"></span> Edit
                                </a>
                            </sec:authorize>
                        </sec:authorize>
                    </div>
                    <div class="col-md-6 text-center">
                        <span class="itemPrice">${product.price}$</span>
                    </div>
                </div>
            </div>
            <div class="panel-heading">
                <h3 class="panel-title">Feedback</h3>
            </div>
            <div class="white col-md-12  panel-body">
                <ul class="media-list">
                    <li class="media">
                        <div ng-repeat="comment in comments" class="media">
                            <a class="pull-left">
                                <img class="media-object img-circle" src="/resources/img/user.png"
                                     style="width: 64px; height: 64px;">
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading">{{comment.userName}}</h4>
                                {{comment.content}}
                            </div>
                        </div>
                    </li>
                    <sec:authorize access="isAuthenticated()">
                        <sec:authorize access="hasRole('USER')">
                            <br>
                            <div class="input-group">
                            <textarea class="form-control custom-control" ng-model="comment"
                                      placeholder="Leave feedback" rows="3"
                                      style="resize:none"></textarea>
                                <span class="input-group-addon btn-square" ng-click="send()">Send</span>
                            </div>
                        </sec:authorize>
                    </sec:authorize>
                </ul>
            </div>
        </div>
    </div>
</div>
<br>
<jsp:include page="../fragments/footer.jsp"/>
<jsp:include page="../fragments/scripts.jsp"/>
<script src="/resources/js/product-ctrl.js"></script>
</body>

</html>