# karate-bootstrap-backend

## Karate DSL - Cucumber

KarateDSL-cucumber : Automation API Test

Karate is the only open-source tool to combine API test-automation, mocks, performance-testing and even UI automation into a single, unified framework. 
The BDD syntax popularized by Cucumber is language-neutral, and easy for even non-programmers. Powerful JSON & XML assertions are built-in, and you can run tests in parallel for speed.


## Getting Started
If you are a Java developer - Karate requires Java 8 (at least version 1.8.0_112 or greater) and then either Maven, Gradle, Eclipse or IntelliJ to be installed. Note that Karate works fine on OpenJDK. Any Java version from 8-12 is supported.

If you are new to programming or test-automation, refer to this video for getting started with just the (free) IntelliJ Community Edition. Other options are the quickstart or the standalone executable.

If you don't want to use Java, you have the option of just downloading and extracting the ZIP release. Try this especially if you don't have much experience with programming or test-automation. We recommend that you use the Karate extension for Visual Studio Code - and with that, JavaScript, .NET and Python programmers will feel right at home.

Visual Studio Code can be used for Java (or Maven) projects as well. One reason to use it is the excellent debug support that we have for Karate.

## Project Architecture
```
    Project-Name
        └──src
            └──main
            └──test
                └──java
                |   └──runner
                |      └──KarateRunner.java
                └──resources
                    └──features_unitary
                    |     └──functionality
                    |       └── example.feature
                    └──features_integration
                    |     └──functionality
                    |       └── example.feature
                    └──services
                    |       └──dao
                    |       └──data
                    |       └──query
                    └──support
                          └── shemas
                              └──functionality
                                  └──schemas.json
                karate-config.js
                logback-test.xml   
```

**test/_java/_runner** - Here we define the runner thats execute all features in parallel and generate report
**resources/_features_unitary/example.feature** - A feature would describe the current test unitary script which has to be executed. (files .feature of the endpoint ext) goes here
**resources/_features_integration/example.feature** - A feature would describe the current test integraton/flows script which has to be executed. (files .feature of the endpoint ext) goes here
**resources/_services/_dao/_data/_query** - you can define the layers and database connections in case there were
**resources/_support** - A feature would describe the current test script which has to be executed. (files .feature of the enpoint health ext) goes here
**resources/_support/_schemas** - Define all schemas of response to use in the features_endpoint
**karate-config.js** - here we define all the environment variables to be used throughout the project
