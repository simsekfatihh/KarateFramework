
Feature: Sample Api Test

Background:
  * url "https://reqres.in/api"
  * header Accept = "application/json; charset=utf-8"


  Scenario: Test Sample GET API
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And match header Content-Type == "application/json; charset=utf-8"
    And print responseTime
    And print response

    #Get with Path, Param
  Scenario: Request with Path and Param
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response

    #Get with Assertion
    Scenario:Assertion Test
     Given path '/users'
     And param page = 2
     When method GET
     Then status 200
     And match response.data[0].first_name == "Michael"
     And match response.data[0].first_name !=null
     And assert response.data.length == 6
     And match response.data[3].id == 10
     And match response.data[4].first_name == 'George'
     And print response




