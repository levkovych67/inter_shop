angular.module('myApp.controllers').controller('ProductCtrl', ['$scope', '$location', '$http', function ($scope, $location, $http) {
    var url = $location.absUrl() + '/comments';

    getAllComments();
    function getAllComments() {
        $http.get(url).then(function (response) {
            $scope.comments = response.data;
        });
    }

    var sendComment = function () {
        var comment = {'userName': 'danko', 'content': $scope.comment};
        $http.post(url, comment).then(function () {
            getAllComments();
        })
    };
    $scope.send = function () {
        sendComment();
    };

    $scope.delete = function () {
        console.log($scope.id)
    };

}]);