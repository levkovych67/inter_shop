angular.module('myApp.controllers').controller('AdminCategoryCtrl', ['$scope', '$location', '$http', function ($scope, $location, $http) {

    var url = '/categories';

    $scope.alert = function (str) {
        console.log(str)
    };
    getAllCategories();
    $scope.categories = [];
    function getAllCategories() {
        $http.get(url).then(function (response) {
            $scope.categories = response.data;
        });
    }

}]);