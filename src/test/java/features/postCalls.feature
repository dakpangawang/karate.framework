Feature: Pets API POST Validation

  Background: 
    * url 'https://petstore.swagger.io/v2/pet'
    * header Accept = 'application/json'
    * def payload = read ('classpath:pets.json')

  Scenario: Add Pet
    And def body =
      """
      {
        "id": 106,
        "category": {
          "id": 106,
          "name": "tiger"
        },
        "name": "tiger",
        "photoUrls": [
          "string"
        ],
        "tags": [
          {
            "id": 106,
            "name": "Tiger"
          }
        ],
        "status": "available"
      }
      """
    And request body
    When method POST
    Then status 201

  @json-payload
  Scenario: Add Pet from json file
    * set payload.id = 109
    * request payload
    * method POST
    * status 201

  @data-driven
  Scenario Outline: Add multiple Pets
    * set payload.id = <id>
    * request payload
    * method POST
    * status 201

    Examples: 
      | id  |
      | 110 |
      | 111 |
