Feature: Pets API GET Validation

  Background: 
    Given url baseUrl

  @get-pets-13
  Scenario: Validate Pets FindyById status 200
    Given path '/13'
    When method GET
    Then status 200
    And match response.id == 13
