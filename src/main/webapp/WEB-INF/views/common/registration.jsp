<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<jsp:include page="../fragments/header.jsp"/>
<div class="container col-xs-6 col-xs-offset-3" ng-controller="RegisterCtrl">
    <br>

    <div class="jumbotron   alert-success text-center" ng-show="userCreated">
        <p>User Created</p>
        <a class="btn btn-default" href="/login">Login</a>
    </div>
    <div class="jumbotron   alert-danger text-center" ng-show="showError">
        <span>Error occurred</span>
         <p ng-repeat="error in errors">{{error.code}} : {{error.defaultMessage}}</p>
    </div>
    <form class="form-horizontal jumbotron white col-xs-12 ">
        <p class="text-center">Sign in</p>
        <div class="form-group">
            <label class="control-label">Email</label>
            <div>
                <input type="text" ng-model="email" placeholder="email" class="form-control" required="">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label">First Name</label>
            <div>
                <input type="text" ng-model="firstName" placeholder="First Name" class="form-control" required="">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label">Last Name</label>
            <div>
                <input type="text" ng-model="lastName" placeholder="Last Name" class="form-control" required="">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label">Phone</label>
            <div>
                <input type="text" ng-model="phone" placeholder="Phone Name" class="form-control" required="">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label">Password</label>
            <div>
                <input type="password" ng-model="password" placeholder="password" class="form-control" required="">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label">Confirm password</label>

            <div>
                <input type="password" ng-model="confirmPassword" placeholder="confirm password" class="form-control"
                       required="">
            </div>
            <label class="label alert-danger" ng-show="passwordError">Passwords are different!</label>
        </div>
        <div class="form-group text-center">
            <button ng-click="registerUser()" class="btn btn-success">Register</button>
            <a href="/" class=" btn btn-danger  ">Cancel</a>
        </div>

    </form>

    <br>
</div>

</div>
<jsp:include page="../fragments/footer.jsp"/>
<jsp:include page="../fragments/scripts.jsp"/>
<script src="/resources/js/register-ctrl.js"></script>

</body>

</html>