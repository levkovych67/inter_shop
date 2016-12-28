<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<jsp:include page="../fragments/header.jsp"/>
<div class="container col-xs-6 col-xs-offset-3" ng-controller="RegisterCtrl">
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>

    <form class="form-horizontal jumbotron col-xs-12 ">
        <p class="text-center">Sign in</p>
        <div class="form-group">
            <label class="control-label">Email</label>
            <div>
                <input type="text" ng-model="email"  placeholder="email" class="form-control" required="">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label">First Name</label>
            <div>
                <input type="text"ng-model="firstName" placeholder="First Name" class="form-control" required="">
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
                <input type="password" ng-model="confirmPassword" placeholder="confirm password" class="form-control" required="">
            </div>
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