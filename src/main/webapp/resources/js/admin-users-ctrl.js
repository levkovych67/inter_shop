angular.module('myApp.controllers').controller('AdminUsrListCtrl', ['$scope', '$location', '$http', function ($scope, $location, $http) {

    var url = 'http://localhost:8080/admin/users.json';
    getUsers();

    function getUsers() {
        $http.get(url).then(function (response) {
            $scope.users = response.data;
        });
    }

    $scope.disableOrEnable = function (user) {
        $http.get('/admin/enable-disable-user/' + user.id).then(function () {
            getUsers();
        })
    };
    $scope.createNewUser = function () {
        $http.post('/user/sign-in/',$scope.user);
        getUsers();
        console.log( $scope.users)
    }


}]);