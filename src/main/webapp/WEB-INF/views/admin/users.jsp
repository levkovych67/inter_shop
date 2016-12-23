<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<jsp:include page="../fragments/header.jsp"/>
<br>
<div class="container " ng-controller="AdminUsrListCtrl as ctrl">
    <div class="panel-primary   ">
        <div class="panel-heading">
            <h3 class="panel-title">
                Users</h3>

        </div>
        <div class="white panel-body">
            <div class="span5">
                <table class="table table-striped table-condensed container">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>email</th>

                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr ng-repeat="user in users">
                        <td>{{user.firstName}} {{user.lastName}}</td>
                        <td>{{user.phone}}</td>
                        <td>{{user.email}}</td>
                        <td>
                            <button ng-class="(user.active) ? 'btn btn-danger' : 'btn btn-success' "  ng-click="disableOrEnable(user)">
                                <div ng-if="user.active" >
                                    DISABLE
                                </div>
                                <div ng-if="!user.active">
                                    ENABLE
                                </div>
                            </button>
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
<script src="/resources/js/admin-users-ctrl.js"></script>

</body>

</html>