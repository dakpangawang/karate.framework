Feature: All helper scenarios

  @get-pets-helper
  Scenario: Validate Pets FindyById status 200
    #url
    * url urlPath
    Given path '/13'
    When method GET
    Then status 200
    And match response.id == 13

  @add-pets-helper
  Scenario Outline: Add multiple Pets
    # url, path, id
    * set payload.id = 112
    * request payload
    * method POST
    * status 201
