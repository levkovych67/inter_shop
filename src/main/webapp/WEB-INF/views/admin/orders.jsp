<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<jsp:include page="../fragments/header.jsp"/>
<br>
<div class="container " ng-controller="AdminUsrOrderCtrl as ctrl">
    <div class="panel-primary   ">
        <div class="panel-heading">
            <h3 class="panel-title">
                Orders</h3>
        </div>
        <div class="white panel-body">
            <div class="span5">
                <table class="table table-striped table-condensed">
                    <thead>
                    <tr class="text-center">
                        <th>id</th>
                        <th>User name</th>
                        <th>Phone</th>
                        <th>Date</th>
                        <th>Total</th>
                        <th>Products</th>
                        <th>Status</th>
                        <th>Confirm</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr ng-repeat="order in orders">
                        <td><h4>{{order.id}}</h4></td>
                        <td><h4>{{order.user.firstName}} {{order.user.lastName}}</h4></td>
                        <td><h4>{{order.user.phone}}</h4></td>
                        <td><h4>{{order.date}}</h4></td>
                        <td><h4>{{order.totalPrice | number : fractionSize}}$</h4></td>
                        <td>
                            <div class="dropdown">
                            <span class=" dropdown-toggle" data-toggle="dropdown"><h4>Products<span class="caret"></span></h4>
                                </span>
                                <ul class="dropdown-menu">
                                    <li><a ng-href="/product/{{product.id}}" ng-repeat="product in order.products">{{product.title}}</a></li>
                                </ul>
                            </div>
                        </td>
                        <td><h4><span class="label label-danger" ng-hide="{{order.status}}">WAITING</span></h4>
                            <h4><span class="label label-info" ng-show="{{order.status}}">ACCEPTED</span></h4>
                        </td>
                        <td><h4><button ng-click="confirmOrder(order)" ng-hide="{{order.status}}" class="label label-success">ACCEPT ORDER</button></h4>
                            <h4><span   ng-show="{{order.status}}" class="label label-info">ORDER CLOSED</span></h4>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<jsp:include page="../fragments/footer.jsp"/>
<jsp:include page="../fragments/scripts.jsp"/>
<script src="/resources/js/admin-orders-ctrl.js"></script>

</body>

</html>