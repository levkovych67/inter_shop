<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../views/fragments/header.jsp"/>
<div class="container-fluid">
    <jsp:include page="fragments/sidebar.jsp"/>
    <div class="col-md-10 row center-block" ng-controller="PageCtrl">
        <div class="col-xs-12">
            <div class="white" style="height:34px">
               <button ng-disabled="pageNumber<2" class="btn btn-square btn-primary" ng-click="prevPage()">Previous page</button>
                  items per page
                <select ng-change="reloadPageSize(pageSize)" ng-model="pageSize">
                    <option value="18">18</option>
                    <option value="50">50</option>
                    <option value="100">100</option>
                </select>
                <button ng-disabled="isNextPageAvailable" class="btn btn-square btn-primary pull-right" ng-click="nextPage()">Next page</button>
            </div>
            <br>
        </div>
        <div ng-repeat="product in products">
            <div class="col-md-2 col-xs-6">
                <div class="thumbnail text-center">
                    <a href="/product/{{product.id}}">
                        <div class="image">
                            <img  ng-src="{{product.images[0].url}}" class="img-responsive" alt="">
                            <div class="text-img"><span class="prod-title">{{product.title}}</span> </div>
                        </div>
                        <span>{{product.price}}$</span>
                    </a>
                    <div class="  nav">
                        <ul>
                            <a ng-click="addToCart(product.id)" href="#">add to <i class="fa fa-shopping-cart"></i></a>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12">
            <div class="white">
                <button ng-disabled="pageNumber<2" class="btn btn-square btn-primary" ng-click="prevPage()">Previous page</button>
                <button ng-disabled="isNextPageAvailable" class="btn btn-square btn-primary pull-right" ng-click="nextPage()">Next page</button>
            </div>
            <br>
        </div>

    </div>
</div>

<jsp:include page="../views/fragments/footer.jsp"/>
<jsp:include page="fragments/scripts.jsp"/>
<script src="/resources/js/product-pagination-ctrl.js"></script>

</body>

</html>
