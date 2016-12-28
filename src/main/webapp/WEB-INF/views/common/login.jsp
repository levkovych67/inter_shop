<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>




<jsp:include page="../fragments/header.jsp"/>
<div class="container col-xs-4 col-xs-offset-4">
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <form method="POST" action="${contextPath}/login" class="jumbotron form-signin text-center">
        <span>Login</span>
        <div class="form-group  ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <br>
            <input name="username" type="text" class="form-control" placeholder="email"
                   autofocus="true"/>
            <br>
            <input name="password" type="password" class="form-control" placeholder="password"/>
            <span>${error}</span>
            <br>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
            <br>
            <a class="btn btn-lg btn-primary btn-block" href="/sign-in"><i class="fa fa-sign-in "></i></a>
        </div>


    </form>

</div>
<jsp:include page="../fragments/footer.jsp"/>
<jsp:include page="../fragments/scripts.jsp"/>


</body>

</html>