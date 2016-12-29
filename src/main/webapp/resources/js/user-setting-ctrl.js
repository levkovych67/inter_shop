angular.module('myApp.controllers').controller('UsrCtrl', ['$scope', '$location', '$http', function ($scope, $location, $http) {


    var url = '/user/get-user';
    $scope.user = {};
    getUser();
    function getUser() {
        $http.get(url).then(function (response) {
            $scope.user = response.data;
        })
    }
    $scope.getUser = function () {
        getUser();
    };
    $scope.changeUser = function () {
        $http.post('/user/update-user',$scope.user).then(function () {
            getUser();
        })
    };



}]);