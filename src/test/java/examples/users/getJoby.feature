Feature: To test the get end point of the application

  Background: Setup the base path
    Given url 'http://localhost:9191'
    And print '*******This is the background******'

  
  Scenario: To get all data from application in JSON format
    Given path '/normal/webapi/all'
    When method get
    And print response
    Then status 200
    
    Scenario: To single data from application in JSON format
    Given path '/normal/webapi/find'
    And param id = 1
    And param jobTitle = 'Software Engg'
    And headers {Accept:'application/json'}
    When method get
    And print response
    Then status 200
