var angular = require('angular');
var mustache = require('./mustache');

var app = angular.module('app', [
    mustache
]);

// app.factory('test', ['MustacheIOService', function(MustacheIOService){
    
// }]);

app.controller('mainViewController', [ 'MustacheIOService', function (MustacheIOService) {
    var ctrl = this;
    return ctrl;
}]);
module.exports = app;
