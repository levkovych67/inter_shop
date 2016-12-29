<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<jsp:include page="../fragments/header.jsp"/>
<div class="container-fluid" ng-controller="UsrCtrl">
    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">
        <br>
        <div class="panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">{{user.firstName}} {{user.lastName}}</h3>
            </div>
            <div class="white panel-body  ">
                <div class="col-md-3 col-lg-3 " align="center"><img alt="User Pic"
                                                                    src="/resources/img/profile.png"
                                                                    class="img-circle img-responsive"></div>
                <div class=" col-md-9 col-lg-9 ">
                    <table class="table table-user-information">
                        <br>
                        <tbody>
                        <tr>
                            <td>
                                <button ng-click="editFirstName=true" class="btn btn-primary btn-xs"><i
                                        class="fa fa-edit"></i></button>
                                <input class="input-sm" ng-show="editFirstName" type="text" ng-model="user.firstName">
                                <span ng-hide="editFirstName">{{user.firstName}}</span>
                                <button ng-show="editFirstName" ng-click="changeUser();editFirstName=false"
                                        class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
                                <button ng-show="editFirstName" ng-click="getUser();editFirstName=false"
                                        class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <button ng-click="editLastName=true" class="btn btn-primary btn-xs"><i
                                        class="fa fa-edit"></i></button>
                                <input class="input-sm" ng-show="editLastName" type="text" ng-model="user.lastName">
                                <span ng-hide="editLastName">{{user.lastName}}</span>
                                <button ng-show="editLastName" ng-click="changeUser();editLastName=false"
                                        class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
                                <button ng-show="editLastName" ng-click="getUser();editLastName=false"
                                        class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <button ng-click="editPhone=true" class="btn btn-primary btn-xs"><i
                                        class="fa fa-edit"></i></button>
                                <input class="input-sm" ng-show="editPhone" type="text" ng-model="user.phone">
                                <span ng-hide="editPhone">{{user.phone}}</span>
                                <button ng-show="editPhone" ng-click="changeUser();editPhone=false"
                                        class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
                                <button ng-show="editPhone" ng-click="getUser();editPhone=false"
                                        class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <button ng-click="editPassword=true" class="btn btn-primary btn-xs"><i
                                        class="fa fa-edit"></i></button>
                                <input class="input-sm" ng-show="editPassword" type="password" ng-model="user.password">
                                <span ng-hide="editPassword">password</span>
                                <button ng-show="editPassword" ng-click="changeUser();editPassword=false"
                                        class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
                                <button ng-show="editPassword" ng-click="getUser();editPassword=false"
                                        class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button>
                            </td>
                        </tr>
                        </tbody>
                    </table>

                </div>
            </div>
            <div class="panel-footer clearfix">
                <p class="pull-left">{{user.email}}</p>
                <button class="pull-right btn btn-primary">
                    <i class="fa fa-edit"></i>
                </button>
            </div>
        </div>

    </div>
</div>
</div>

<jsp:include page="../fragments/footer.jsp"/>
<jsp:include page="../fragments/scripts.jsp"/>
<script src="/resources/js/user-setting-ctrl.js"></script>

</body>

</html>