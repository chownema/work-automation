var angular = require('angular');
var app = angular.module('mustache.module');
var mustache = require('mustache');

app.factory('MustacheIOService', [
'$http', '$log', '$window',
function ($http, $log, $window) {
    var srv = this;
    $log.log('helooo');
    return srv;
}]);

module.exports = app;
