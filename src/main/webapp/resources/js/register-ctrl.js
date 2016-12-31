angular.module('myApp.controllers').controller('RegisterCtrl', ['$scope', '$location', '$http', function ($scope, $location, $http) {


    $scope.registerUser = function () {
        if (checkFields()) {
            if (comparePass()) {
                $scope.passwordError = false;
               var user = buildUser();
                $http.post('/registration', user).then(function successCallback(response) {
                    $scope.showError = false;
                    $scope.userCreated = true;
                }, function errorCallback(response) {
                    $scope.errors = response.data;
                    $scope.userCreated = false;
                    $scope.showError = true;
                });
            }
        }
    };

    var checkFields = function () {
        return !!($scope.firstName && $scope.lastName && $scope.phone && $scope.email && $scope.password && $scope.confirmPassword);
    };
    var comparePass = function () {
        if ($scope.password != $scope.confirmPassword) {
            $scope.passwordError = true;
            return false;
        } else return true;
    };
    var buildUser = function () {
        var user = {};
        user.firstName = $scope.firstName;
        user.lastName = $scope.lastName;
        user.phone = $scope.phone;
        user.email = $scope.email;
        user.password = $scope.password;
        return user;
    }
}]);