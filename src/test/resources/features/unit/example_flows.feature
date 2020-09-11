Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: get all users and then get the first user by id
    * def userById = call read('../features/integration/example_unitary.feature@userById') { userId: 1 }
    Given path 'users'
    When method get
    Then status 200
