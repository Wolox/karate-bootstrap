# karate-bootstrap-backend

## Karate DSL - Cucumber

=================

KarateDSL-cucumber : Automation API Test

Karate is the only open-source tool to combine API test-automation, mocks, performance-testing and even UI automation into a single, unified framework. 
The BDD syntax popularized by Cucumber is language-neutral, and easy for even non-programmers. Powerful JSON & XML assertions are built-in, and you can run tests in parallel for speed.

## Project Architecture
```
    Project-Name
        └──src
            └──main
            └──test
                └──java
                |   └──runner
                |       KarateRunner.java
                └──resources
                    └──karate
                        └──features
                            example.feature
                            healthcheck.feature
                        └──services
                            └──dao
                            └──data
                            └──query
                        └──support
                            schemas.json
                            env_data.json
                karate-config.js
                logback-test.xml   
```

* **test/_java/_runner** - Here we define the runner thats execute all features in parallel and generate report
* **resources/_karate/_features/example.feature** - A feature would describe the current test script which has to be executed. (files .feature of the endpoint ext) goes here
* **resources/_karate/_services/_dao/_data/_query** - you can define the layers and database connections in case there were
* **resources/_karate/_support/** - A feature would describe the current test script which has to be executed. (files .feature of the enpoint health ext) goes here
* **resources/_support/_schemas** - Define all schemas of response to use in the features_endpoint
* **resources/_support/_json** - Define all .json to use in the features_endpointtures and env_data.json we define all the environment variables to be used throughout the project
* **/karate-config.js** - here we define all the environment variables to be used throughout the project
