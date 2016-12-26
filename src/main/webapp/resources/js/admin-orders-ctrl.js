angular.module('myApp.controllers').controller('AdminUsrOrderCtrl', ['$scope', '$location', '$http', function ($scope, $location, $http) {

    var url = 'http://localhost:8080/admin/orders.json';

    getOrders();

    function getOrders() {
        $http.get(url).then(function (response) {
            $scope.orders = response.data;

        });
    }

    $scope.confirmOrder = function (order) {
        $http.put("http://localhost:8080/admin/confirm-order/"+order.id).then(function (response) {
            console.log(response);
            getOrders();
        })
    }

}]);