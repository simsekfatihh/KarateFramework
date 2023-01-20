Feature: Sample Api Test


  @Wip
  Scenario: Test Sample GET API
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And print response




