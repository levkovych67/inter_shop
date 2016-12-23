<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<jsp:include page="../fragments/header.jsp"/>
<br>
<div class="container text-center" ng-controller="AdminCtrl as ctrl">
    <div class="panel-primary   ">
        <div class="panel-heading">
            <h3 class="panel-title">
                Orders</h3>
        </div>
        <div class="white panel-body">
            <div class="span5">
                <table class="table table-striped table-condensed">
                    <thead>
                    <tr>
                        <th>Username</th>
                        <th>Date registered</th>
                        <th>Role</th>
                        <th>Status</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Donna R. Folse</td>
                        <td>2012/05/06</td>
                        <td>Editor</td>
                        <td><span class="label label-success">Active</span>
                        </td>
                    </tr>
                    <tr>
                        <td>Emily F. Burns</td>
                        <td>2011/12/01</td>
                        <td>Staff</td>
                        <td><span class="label label-important">Banned</span></td>
                    </tr>
                    <tr>
                        <td>Andrew A. Stout</td>
                        <td>2010/08/21</td>
                        <td>User</td>
                        <td><span class="label">Inactive</span></td>
                    </tr>
                    <tr>
                        <td>Mary M. Bryan</td>
                        <td>2009/04/11</td>
                        <td>Editor</td>
                        <td><span class="label label-warning">Pending</span></td>
                    </tr>
                    <tr>
                        <td>Mary A. Lewis</td>
                        <td>2007/02/01</td>
                        <td>Staff</td>
                        <td><span class="label label-success">Active</span></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>

<jsp:include page="../fragments/footer.jsp"/>
<jsp:include page="../fragments/scripts.jsp"/>
<script src="/resources/js/admin-users-ctrl.js"></script>

</body>

</html>