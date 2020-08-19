Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: get all users and then get the first user by id
    * def user_by_id = call read('../features_unitary/functionality/example_unitary.feature@user_by_id_params') { userId: 1 }
    Given path 'users'
    When method get
    Then status 200




