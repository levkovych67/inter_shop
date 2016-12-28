angular.module('myApp.controllers').controller('RegisterCtrl', ['$scope', '$location', '$http', function ($scope, $location, $http) {


    $scope.registerUser = function () {
        if ($scope.firstName && $scope.lastName && $scope.phone && $scope.email && $scope.password && $scope.confirmPassword) {
            if ($scope.password == $scope.confirmPassword) {
                var user = {};
                user.firstName = $scope.firstName;
                user.lastName = $scope.lastName;
                user.phone = $scope.phone;
                user.email = $scope.email;
                user.password = $scope.password;
                $http.post('/user/sign-in', user).then(function successCallback(response) {
                    $scope.showError = false;
                    $scope.userCreated = true;
                }, function errorCallback(response) {
                    $scope.errors = response.data;
                    $scope.userCreated = false;
                    $scope.showError = true;
                });
            }
        }
    }


}]);