Feature: Unit Tests

  Background: 
    * def utils = Java.type('javaUtils.JavaUtils')

  Scenario: Using java method
    * def getOrfanizationName = utils.getOrganizationName()
    * print getOrfanizationName

  Scenario: getDate Java
    * def getDate = utils.getDate()
    * print getDate

  Scenario: Calling another scenario from different feature file
    * def getPets = call read('classpath:features/getCalls.feature@get-pets-13')
    * print getPets.response

  @helper
  Scenario: Calling another scenario from helper feature file
    * def getPets = call read('classpath:helper/helper.feature@get-pets-helper'){'urlPath':'https://petstore.swagger.io/v2/pet'}
    * print getPets.response
