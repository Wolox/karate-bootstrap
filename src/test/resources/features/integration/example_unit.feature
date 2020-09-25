Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url pathUrl

    # conexion BD
    * def config = { username: #(DB_USERNAME), password: #(DB_PASSWORD), url: #(DB_URL), driverClassName: #(DB_DRIVER) }
    * def DbUtils = Java.type('Support.DbUtils')
    * def db = new DbUtils(config)

    @user
    Scenario: get all users and then get the first user by id
    Given path 'users'
    When method get
    Then status 200

    @userById
    Scenario: get  users Basic filtering is supported through query parameters.
    Given path 'posts'
    And params { userId: 1}
    When method get
    Then status 200

    @userByIdParams @ignore
    Scenario: get  users Basic filtering is supported through query parameters.
    * def rut = { userId: '#(userId)'}
    * path 'posts'
    * params { userId: userId}
    * method get
    * status 200
