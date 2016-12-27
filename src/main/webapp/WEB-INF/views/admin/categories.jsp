<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../fragments/header.jsp"/>
<br>

<script type="text/ng-template" id="tree_view">
    <a ng-click="alert(category.id)"> {{ category.title }} </a>
    <ul ng-if="category.subcategories">
        <a ng-repeat="category in category.subcategories" ng-include="'tree_view'">
        </a>
    </ul>
</script>
<div class="col-md-offset-2 col-md-8 container" ng-controller="AdminCategoryCtrl as bar">
    <div class="panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Categories</h3>
        </div>
        <div class="white panel-body">
            <ul class="row">
                <a ng-repeat="category in categories" ng-include="'tree_view'">
                </a>
            </ul>

        </div>
    </div>
</div>


<jsp:include page="../fragments/footer.jsp"/>
<jsp:include page="../fragments/scripts.jsp"/>
<script src="/resources/js/admin-category-ctrl.js"></script>

</body>

</html>