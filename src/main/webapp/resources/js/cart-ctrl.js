angular.module('myApp.controllers').controller('CartCtrl', ['$scope', '$location', '$http', function ($scope, $location, $http) {
    var url = $location.absUrl() + "/products";
    $scope.total = 0;

    $scope.filteredProducts = [];
    getProducts();
    function getProducts() {
        $http.get(url).then(function (response) {
            $scope.products = response.data;
            $scope.productCount = $scope.products.length;
            transfer();
            countTotal();
        });
    }
    $scope.deleteFromCart = function (product, index) {
        $http.delete(url + '/' + product.id).then(function (rep) {
            if (product.quantity === 1) {
                $scope.filteredProducts.splice(index, 1);
            }
            else {
                product.quantity = product.quantity - 1
            }
            countTotal()
        });

    };
    function countTotal() {
        $scope.total = 0;
        $scope.filteredProducts.forEach(function (product) {
            $scope.total = $scope.total + product.price * product.quantity;

        })
    }
    function transfer() {
        var newProdArray = [];
        $scope.products.forEach(function (product) {
            var prod = {};
            prod.title = product.title;
            prod.price = product.price;
            prod.id = product.id;
            prod.quantity = count(product);
            newProdArray.push(prod);
        });
        $scope.filteredProducts = filterDuplicates(newProdArray);
    }
    function count(comparableProduct) {
        var count = 0;
        $scope.products.forEach(function (product) {
            if (comparableProduct.id === product.id) {
                count++;
            }
        });
        return count;
    }
    function filterDuplicates(arr) {
        var newArr = [];
        angular.forEach(arr, function (value, key) {
            var exists = false;
            angular.forEach(newArr, function (val2, key) {
                if (angular.equals(value.id, val2.id)) {
                    exists = true
                }
            });
            if (exists == false && value.id != "") {
                newArr.push(value);
            }
        });
        return newArr;
    }
    $scope.addToCart = function (product) {
        $http.post('/user/add-to-cart/'+product.id).then(function (response) {
            getProducts();
        });

    };

    $scope.confirmOrder = function () {
        $http.post('/user/confirm');
        $scope.filteredProducts = [];
        $scope.showConfirmation=false;
        $scope.total = 0;
    }
}]);