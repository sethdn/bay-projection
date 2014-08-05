// 'use strict';
// /*global ooCalendar, console*/

// ooCalendar.constant('scrollConfig', {
//   // 'easeInQuad'
//   // 'easeOutQuad'
//   // 'easeInOutQuad'
//   // 'easeInCubic'
//   // 'easeOutCubic'
//   // 'easeInOutCubic'
//   // 'easeInQuart'
//   // 'easeOutQuart'
//   // 'easeInOutQuart'
//   // 'easeInQuint'
//   // 'easeOutQuint'
//   // 'easeInOutQuint'
//   easing: 'easeOutQuart',
//   duration: 800,
//   offset: 0
// });

ooCalendar.controller('CalendarViewCtrl', ['$scope', 'CalendarViewSpy',
  function ($scope, CalendarViewSpy) {

  // Configuration attributes
  // angular.forEach(['formatDay', 'formatMonth', 'formatYear', 'formatDayHeader', 'formatDayTitle', 'formatMonthTitle',
  //                  'minMode', 'maxMode', 'showWeeks', 'startingDay', 'yearRange'], function( key, index ) {
  //   self[key] = angular.isDefined($attrs[key]) ? (index < 8 ? $interpolate($attrs[key])($scope.$parent) : $scope.$parent.$eval($attrs[key])) : datepickerConfig[key];
  // });

    this.pickWeek = function (weekId) {
      CalendarViewSpy.pickWeek(weekId);
    };

    this.pickDay = function (dayId) {
      CalendarViewSpy.pickDay(dayId);
    };

    this.pickEvent = function (eventId) {
      CalendarViewSpy.pickEvent(eventId);
    };

    // this.updateVisibleWeek = function (weekId) {
    //   $scope.visible.week = weekId;
    // };

    // this.updateVisibleDay = function (dayId) {
    //   $scope.visible.day = dayId;
    // };

    // this.updateVisibleEvent = function (eventId) {
    //   $scope.visible.event = eventId;
    // };

    // this.getVisibleWeek = function () {
    //   return $scope.visible.week;
    // };

    // this.getVisibleDay = function () {
    //   return $scope.visible.day;
    // };

    // this.getVisibleEvent = function () {
    //   return $scope.visible.event;
    // };

  }]);