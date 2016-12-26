angular.module('myApp.controllers').controller('ProductCtrl', ['$scope', '$location', '$http', function ($scope, $location, $http) {
    var url = $location.absUrl() + '/comments';

    getAllComments();
    function getAllComments() {
        $http.get(url).then(function (response) {
            $scope.comments = response.data;
        });
    }

    function sendComment () {
        var comment = {'content': $scope.comment};
        $http.post(url, comment).then(function () {
            getAllComments();
        })
    }
    $scope.send = function () {
        sendComment();
    };
    $scope.addToCart = function (id) {
        $http.get('/user/add-to-cart/'+id).then(function (response) {
        });

    }

}]);