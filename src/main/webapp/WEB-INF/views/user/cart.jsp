<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../fragments/header.jsp"/>
<div class="container ">
    <br>
    <div class="panel panel-primary" ng-controller="CartCtrl as ctrl">
        <div class="panel-heading">
            <h3 class="panel-title">Your Cart </h3>
        </div>
        <div class="panel-body " >
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Product name</th>
                    <th>Price</th>
                    <th class="text-center">Quantity</th>
                </tr>
                </thead>
                <tbody>
                <tr ng-repeat="product in filteredProducts">
                    <td>{{product.title}}</td>
                    <td>{{product.price}}$</td>
                    <td class="text-center">
                        <a ng-click="addToCart(product)" class="btn btn-success btn-xs"><i class="fa fa-plus"></i></a>
                       <span> {{product.quantity}} </span>
                        <a ng-click="deleteFromCart(product,$index)" class="btn btn-danger btn-xs"><i class="fa fa-minus"></i></a>
                    </td>

                </tr>
                </tbody>
            </table>
            <h1 class="text-center" ng-show='filteredProducts.length==0' >YOUR CART IS EMPTY</h1>
            <h4><span class="label label-primary pull-left">TOTAL : {{total | number : fractionSize}}$ </span></h4>

            <button class="btn btn-success pull-right" ng-click="showConfirmation=true" ng-disabled='filteredProducts.length==0' ng-hide="showConfirmation">Confirm Order</button>
            <div class="btn-group pull-right" ng-show="showConfirmation">
                <button class="btn btn-success  " ng-click="confirmOrder()" >Confirm ( {{total | number : fractionSize}}$ )</button>
                <button class="btn btn-danger" ng-click="showConfirmation=false" >Cancel</button>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../fragments/footer.jsp"/>
<jsp:include page="../fragments/scripts.jsp"/>
<script src="/resources/js/cart-ctrl.js"></script>

</body>

</html>