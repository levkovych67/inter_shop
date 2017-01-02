angular.module('myApp.controllers').controller('PageCtrl', ['$scope', '$location', '$http', function ($scope, $location, $http) {
    var url =$location.absUrl()+'/';
    $scope.pageSize = '18';
    $scope.pageNumber = 1;
    var getProducts = function (pageSize, pageNumber) {
        $http.get(url + pageSize + '/' + pageNumber).then(function (response) {
            $scope.products = response.data;
        });
        var nextPage = pageNumber + 1;
        $http.get(url + pageSize + '/' + nextPage).then(function (response) {
            if (response.data.length == 0) {
                $scope.isNextPageAvailable = true;
            }
        });

    };
    getProducts($scope.pageSize, $scope.pageNumber);
    $scope.nextPage = function () {
        getProducts($scope.pageSize, ++$scope.pageNumber);
    };
    $scope.prevPage = function () {
        getProducts($scope.pageSize, --$scope.pageNumber);
        $scope.isNextPageAvailable=false;
    };
    $scope.reloadPageSize = function (pageSize) {
        $scope.isNextPageAvailable = false;
        getProducts(pageSize, 1);
        $scope.pageNumber = 1;
    };
    $scope.addToCart = function (id) {
        $http.post('/user/add-to-cart/'+id).then(function (response) {
        });

    }
}]);