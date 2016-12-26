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
                        <td>{{order.id}}</td>
                        <td>{{order.user.firstName}} {{order.user.lastName}}</td>
                        <td>{{order.user.phone}}</td>
                        <td>{{order.date}}</td>
                        <td>{{order.totalPrice | number : fractionSize}}$</td>
                        <td>
                            <div class="dropdown">
                            <span class=" dropdown-toggle" data-toggle="dropdown">Products
                                <span class="caret"></span></span>
                                <ul class="dropdown-menu">
                                    <li><a ng-repeat="product in order.products">{{product.title}}</a></li>
                                </ul>
                            </div>
                        </td>
                        <td><span class="label label-success">{{order.status}}</span> </td>
                        <td><span class="label label-success"><i class="fa fa-check"></i></span></td>
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