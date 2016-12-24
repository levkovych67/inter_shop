angular.module('myApp.controllers').controller('EditCtrl', ['$scope', 'fileReader', '$location', '$http', function ($scope, fileReader) {
    $scope.getFile = function () {
        fileReader.readAsDataUrl($scope.file, $scope)
            .then(function (result) {
                $scope.imageSrc = result;
            });
    };
}]);

angular.module('myApp.controllers').directive("ngFileSelect", function () {
    return {
        link: function ($scope, el) {
            el.bind("change", function (e) {
                $scope.file = (e.srcElement || e.target).files[0];
                $scope.getFile();
            })
        }
    }
});