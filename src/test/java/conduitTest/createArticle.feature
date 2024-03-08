Feature: Create Article

  Background: Define url
    Given url 'https://conduit-api.bondaracademy.com/api/'

  Scenario: Create Token
   
    Given path 'users/login'
    And request {"user": {"email": "vsathia@hotmail.com","password": "Orionsy7!?"}}
    When method Post
    And print response
    Then status 200
    * def authToken = response.user.token
    
    Given header Authorization = 'Token ' + authToken
    Given path 'articles'
    And request 	 {"article": {"tagList": [], "title": "Testingxyv", "description": "test test", "body": "body"}}
    When method post
    And print response
    Then status 201
    And match response.article.title == "Testingxyv"
