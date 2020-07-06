# Karate test file for the basic tests for every microservice. It should run before any other feature file.
@dev
Feature: Tests the availability of the Microservice

  Background:
    * url urls['uri-example']

  Scenario: checks if the microservice is live
    Given path 'actuator/health'
    * configure retry = { count: #(retryCount), interval: #(retryInterval) }
    And retry until responseStatus == 200
    When method get

  Scenario: checks if swagger documentation is up
    Given path 'v1/pom/api-docs'
    When method get
    Then status 200

  Scenario: checks if the info endpoint is up
    Given path 'actuator/info'
    When method get
    Then status 200

  Scenario: checks if the metrics endpoint is up
    Given path 'actuator/metrics'
    When method get
    Then status 200