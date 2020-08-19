Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'https://jsonplaceholder.typicode.com'

    @user
    Scenario: get all users and then get the first user by id
    Given path 'users'
    When method get
    Then status 200
    * print "Test unitary execute OK"

    @user_by_id
    Scenario: get  users Basic filtering is supported through query parameters.
    Given path 'posts'
    And params { userId: 1}
    When method get
    Then status 200
    * print "Test unitary execute OK"

    @user_by_id_params @ignore
    Scenario: get  users Basic filtering is supported through query parameters.
    * def rut = { userId: '#(userId)'}
    * path 'posts'
    * params { userId: userId}
    * method get
    * status 200
    * print "Test unitary execute OK"





  