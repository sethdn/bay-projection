'use strict';
/* global angular */
var ooApp = angular.module('ooApp', [
  'ooCalendar',
  'ngRoute']);


ooApp.config(['$routeProvider', function ($routeProvider) {
  $routeProvider.
    when('/', {
      templateUrl: '../assets/calendar/index.html',
      controller: 'CalendarCtrl'
    });
}]);

ooApp.constant('angularMomentConfig', {
  timezone: 'America/Los_Angeles'
});