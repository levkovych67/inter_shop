<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../fragments/header.jsp"/>
<br>

<script type="text/ng-template" id="tree_view">
    <a ng-click="startingChild(category)"> {{ category.title }} </a>
    <ul ng-if="category.subcategories">
        <li ng-repeat="category in category.subcategories" ng-include="'tree_view'">
        </li>
    </ul>
</script>
<div class="col-md-offset-2 col-md-8 container" ng-controller="AdminCategoryCtrl as bar">
    <div class="panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Categories</h3>
        </div>
        <div class="white panel-body">
            <div class="col-xs-6">
                <ul class="row">
                    <a ng-repeat="category in categories" ng-include="'tree_view'">
                    </a>
                </ul>

            </div>
            <div class="col-xs-6 row">
                <ul class="row" ng-show="parentCategory">
                    <div class="text-center">
                        <br><br><br>
                        <h4>Parent category is {{parentCategory.title}}</h4>
                        <hr>
                        <h4>Please write a title for the category</h4>
                        <form name="categoryForm" class="form-group">
                            <input name="newCategoryTitle" ng-model="newCategoryTitle" class="form-control" required>
                        </form>
                        <hr>
                        <button ng-show="categoryForm.newCategoryTitle.$valid" class="btn btn-success pull-right"
                                ng-click="createCategory()">create category
                        </button>

                    </div>
                </ul>

            </div>
        </div>
    </div>
</div>


<jsp:include page="../fragments/footer.jsp"/>
<jsp:include page="../fragments/scripts.jsp"/>
<script src="/resources/js/admin-category-ctrl.js"></script>

</body>

</html>