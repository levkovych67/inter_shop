angular.module('myApp.controllers').controller('MessageCtrl', ['$scope', '$location', '$http', function ($scope, $location, $http) {
    var url = $location.absUrl() + '/comments';

    getAllMessages();
    function getAllMessages() {
        $http.get('/user/message-list').then(function (response) {
            $scope.messages = response.data;
        });
    }



}]);