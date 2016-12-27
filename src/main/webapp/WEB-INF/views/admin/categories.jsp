<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../fragments/header.jsp"/>
<br>

<script type="text/ng-template" id="tree_view">
    <button class="btn btn-link btn-xs" ng-click="startingChild(category)">  <i class="fa plus-icon fa-plus-circle"></i></button> <span>{{ category.title }}</span>
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
                <ul class="row" >
                    <div class="text-center">
                        <br><br><br>
                       <div ng-show="parentCategory">
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