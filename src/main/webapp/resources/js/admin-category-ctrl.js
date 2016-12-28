angular.module('myApp.controllers').controller('AdminCategoryCtrl', ['$scope', '$location', '$timeout', '$http', function ($scope, $location, $timeout, $http) {

    var url = '/categories';
    $scope.rootCategory = false;
    $scope.startingChild = function (category) {
        $scope.parentCategory = category;
        $scope.rootCategory = false;
    };
    getAllCategories();
    $scope.categories = [];
    function getAllCategories() {
        $http.get(url).then(function (response) {
            $scope.categories = response.data;
            $scope.newCategoryTitle = null;
        });
    }
    $scope.createCategory = function () {
        var parentCategoryId = $scope.parentCategory.id;
        var category = {'title': $scope.newCategoryTitle, 'parentCategoryId': parentCategoryId};
        $http.post('/create-category', category).then(function () {
            getAllCategories()
        });
        $scope.parentCategory = null;

        $scope.showCreated();
    };
    $scope.categoryCreated = true;
    $scope.showCreated = function () {
        $scope.categoryCreated = false;
        $timeout(function () {
            $scope.categoryCreated = true;
        }, 2000);
    };
    $scope.startingRoot = function () {
        $scope.rootCategory = true;
        $scope.parentCategory = null;
    };
    $scope.createRootCategory = function () {
        var category = {'title': $scope.newCategoryTitle};
        $http.post('/create-category', category).then(function () {
            getAllCategories()
        });
        $scope.parentCategory = null;
        $scope.rootCategory = false;
        $scope.showCreated();
    }
}]);