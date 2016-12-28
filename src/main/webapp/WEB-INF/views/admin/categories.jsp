<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../fragments/header.jsp"/>
<br>

<script type="text/ng-template" id="tree_view">
    <button class="btn btn-link btn-xs" ng-click="startingChild(category)"><i class="fa plus-icon fa-plus-circle"></i>
    </button> <span>{{ category.title }}</span>
    <ul ng-if="category.subcategories">
        <span ng-repeat="category in category.subcategories" ng-include="'tree_view'">
        </span>
    </ul>
</script>
<div class="col-md-offset-2 col-md-8 container" ng-controller="AdminCategoryCtrl as bar">
    <div class="panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Choose category</h3>
        </div>
        <div class="white panel-body">
            <div class="col-xs-4">
                <ul class="row">
                    <span ng-repeat="category in categories" ng-include="'tree_view'">
                    </span>
                </ul>

            </div>
            <div class="col-xs-6 row">
                <ul class="row">
                    <div class="text-center">
                        <br><br><br>

                        <button class="btn btn-success" ng-click="startingRoot()">Create root category</button>
                        <br><br>
                        <div ng-show="parentCategory">
                            <h4>Parent category is {{parentCategory.title}}</h4>
                            <hr>
                            <h4>Category title</h4>
                            <form name="categoryForm" class="form-group">
                                <input name="newCategoryTitle" ng-model="newCategoryTitle" class="form-control"
                                       required>
                            </form>
                            <h4>&nbsp;</h4>
                            <hr>
                            <button ng-show="categoryForm.newCategoryTitle.$valid" class="btn btn-success pull-right"
                                    ng-click="createCategory()">create category
                            </button>
                        </div>
                        <div ng-show="rootCategory">
                            <hr>
                            <h4>Category title</h4>
                            <form name="categoryForm" class="form-group">
                                <input name="newCategoryTitle" ng-model="newCategoryTitle" class="form-control"
                                       required>
                            </form>
                            <h4>&nbsp;</h4>
                            <hr>
                            <button ng-show="categoryForm.newCategoryTitle.$valid" class="btn btn-success pull-right"
                                    ng-click="createRootCategory()">create category
                            </button>
                        </div>
                        <h4><p class="alert alert-success" ng-hide="categoryCreated">Category is created <i
                                class="fa fa-exclamation-triangle"></i></p></h4>
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