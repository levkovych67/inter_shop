<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../fragments/header.jsp"/>
<div class="container ">
    <br>
    <div class="panel panel-primary" >
        <div class="panel-heading">
            <h3 class="panel-title">Your Cart</h3>
        </div>
        <div class="panel-body " ng-controller="CartCtrl as ctrl">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Product name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th class="text-center">Action</th>
                </tr>
                </thead>
                <tbody>
                    <tr ng-repeat="product in products">
                        <td>{{product.title}}</td>
                        <td>{{product.price}}$</td>
                        <td>3</td>
                        <td class="text-center">
                            <a   ng-click="deleteFromCart(product.id,$index)" class="btn btn-danger btn-xs">Remove</a>
                        </td>
                    </tr>
                </tbody>
            </table>
           <h4><span class="label label-primary pull-left">TOTAL : {{total}}$</span></h4>
            <button class="btn btn-success pull-right">Confirm Order</button>
        </div>

    </div>

</div>
<jsp:include page="../fragments/footer.jsp"/>
<jsp:include page="../fragments/scripts.jsp"/>
<script src="/resources/js/cart-ctrl.js"></script>

</body>

</html>