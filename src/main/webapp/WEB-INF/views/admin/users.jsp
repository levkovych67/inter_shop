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
            <button class="btn btn-warning pull-right" data-toggle="modal" data-target="#myModal">create new User
            </button>
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
                            <button ng-class="(user.active) ? 'btn btn-danger' : 'btn btn-success' "
                                    ng-click="disableOrEnable(user)">
                                <div ng-if="user.active">
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
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog ">

                <div class="modal-content col-xs-10">
                    <div class="modal-header">

                        <h4>Register User</h4>
                    </div>
                    <br>
                    <div class="form-group">
                        <label for="email" class="cols-sm-2 control-label">Your Email</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-envelope fa"
                                                                   aria-hidden="true"></i></span>
                                <input type="text" ng-model="user.email" class="form-control" name="email" id="email"
                                       placeholder="Enter your Email"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="name" class="cols-sm-2">First Name</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                <input ng-model="user.firstName" type="text" class="form-control" name="name" id="name"
                                       placeholder="Enter your First Name"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="name" class="cols-sm-2">Last Name</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                <input  ng-model="user.lastName" type="text" class="form-control" name="name" id="lastName"
                                       placeholder="Enter your Last Name"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="cols-sm-2 control-label">Password</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-lock fa-lg"
                                                                   aria-hidden="true"></i></span>
                                <input type="password" ng-model="user.password" class="form-control" name="password" id="password"
                                       placeholder="Enter your Password"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-lock fa-lg"
                                                                   aria-hidden="true"></i></span>
                                <input type="password" ng-model="user.condirmPassword" class="form-control" name="confirm" id="confirm"
                                       placeholder="Confirm your Password"/>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer ">
                        <div class="col-xs-6 text-center">
                            <button type="button" ng-click="registerUser()" class="btn btn-primary login-button">Register</button>
                        </div>
                        <div class="col-xs-6 text-center">
                            <button type="button" data-dismiss="modal" class="btn btn-danger    login-button">Cancel</button>
                        </div>


                    </div>


                </div>

            </div>
        </div>
    </div>

</div>

<jsp:include page="../fragments/footer.jsp"/>
<jsp:include page="../fragments/scripts.jsp"/>
<script src="/resources/js/admin-users-ctrl.js"></script>

</body>

</html>