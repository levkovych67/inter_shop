angular.module('myApp.controllers').controller('CartCtrl', ['$scope', '$location', '$http', function ($scope, $location, $http) {
    var url = $location.absUrl() + "/products";
    $scope.total = 0;

    function getProducts() {
        $http.get(url).then(function (response) {
            $scope.products = response.data;
            countTotal();
        });
    }

    getProducts();

    $scope.deleteFromCart = function (productId,index) {
        $http.post(url + '/' + productId).then(function (rep) {
            $scope.products.splice(index,1);

            countTotal()
        });

    };
    function countTotal() {
        $scope.total = 0;
        $scope.products.forEach(function (product) {
            $scope.total = $scope.total + product.price;
        })
    }
}]);