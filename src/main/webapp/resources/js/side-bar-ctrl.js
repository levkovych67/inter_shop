angular.module('myApp.controllers').controller('SideBarCtrl', ['$scope', '$location', '$http', function ($scope, $location, $http) {

    var url = '/categories';
    getAllCategories();
    $scope.categories = [];
    function getAllCategories() {
        $http.get(url).then(function (response) {
            $scope.categories = response.data;
        });
    }

}]);