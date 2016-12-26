angular.module('myApp.controllers').controller('CartCtrl', ['$scope', '$location', '$http', function ($scope, $location, $http) {
    var url = $location.absUrl() + "/products";


    function getProducts() {
        $http.get(url).then(function (response) {
            console.log(2)
            $scope.total = 0;
            $scope.products = response.data;
            $scope.products.forEach(function (product) {
                $scope.total = $scope.total + product.price;
            })
        });
    }

    getProducts();

    $scope.deleteFromCart = function (productId,index) {
        $http.post(url + '/' + productId).then(function (rep) {
            $scope.products.splice(index,1);
        });

    }

}]);