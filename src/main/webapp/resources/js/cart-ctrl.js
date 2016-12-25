angular.module('myApp.controllers').controller('CartCtrl', ['$scope', '$location', '$http', function ($scope, $location, $http) {
    var url = $location.absUrl() + "/products";

    getProducts();
    function getProducts() {
        $http.get(url).then(function (response) {
            $scope.total = 0;
            $scope.products = response.data;
            $scope.products.forEach(function (product) {
                $scope.total = $scope.total + product.price;
            })
        });
    }

    $scope.deleteFromCart = function (productId) {
        $http.get(url + '/' + productId).then(function () {
            getProducts();
        });
    }

}]);