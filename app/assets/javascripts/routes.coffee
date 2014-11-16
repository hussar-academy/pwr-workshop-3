angular.module('DigApp').config ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise '/'

  $stateProvider
    .state 'index',
      url: '/',
      templateUrl: '/assets/index.html'

    .state 'digs',
      url: '/digs',
      templateUrl: 'assets/digs/index.html',
      controller: 'DigsCtrl',

