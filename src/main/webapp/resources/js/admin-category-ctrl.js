angular.module('myApp.controllers').controller('AdminCategoryCtrl', ['$scope', '$location', '$http', function ($scope, $location, $http) {

    var url = '/categories';

    $scope.startingChild = function (category) {
        $scope.parentCategory = category;
    };
    getAllCategories();
    $scope.categories = [];
    function getAllCategories() {
        $http.get(url).then(function (response) {
            $scope.categories = response.data;
        });
    }

    $scope.createCategory = function () {
        var parentCategoryId = $scope.parentCategory.id;
        var category = {'title':$scope.newCategoryTitle,'parentCategoryId':parentCategoryId};
        $http.post('/create-category',category).then(function () {
            getAllCategories()
        })

    }
}]);