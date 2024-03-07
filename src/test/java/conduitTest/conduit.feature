Feature: Testing feature from conduit Test

  Scenario: Get all tags
    Given url 'https://conduit.productionready.io/api/tags'
    When method Get
    Then status 200

  Scenario: Get 10 articles from the page
    #   Given param limit = 10 // to simplify can use a json object, refer below
    #   Given param offset = 0
    Given params { limit: 10, offset: 0}
    Given url 'https://conduit.productionready.io/api/articles'
    When method Get
    Then status 200
    And match response.articles == '#[10]'
    And match response.articlesCount == 500
