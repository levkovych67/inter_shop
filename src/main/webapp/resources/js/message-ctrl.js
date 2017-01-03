angular.module('myApp.controllers').controller('MessageCtrl', ['$scope', '$location', '$http', function ($scope, $location, $http) {
    var url = $location.absUrl() + '/comments';

    getAllMessages();
    function getAllMessages() {
        $http.get('/user/message-list').then(function (response) {
            $scope.messages = response.data;
            console.log($scope.messages);
        });
    }

    $scope.setImageRead = function (messageID) {
        $http.put("/user/set-message-read/" + messageID).then(function () {
            getAllMessages();
        })
    };
    $scope.class = function (message) {
        if (message.read === false) {
            return "alert-success";
        }

    };
    $scope.delete = function (messageID) {
        $http.delete("/user/delete-message/" + messageID).then(function () {
            getAllMessages();
        })
    }


}]);