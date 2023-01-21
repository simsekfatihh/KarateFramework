Feature: Post Example Test


Scenario: Post Test1
  Given url 'https://reqres.in/api/users'
  And request {"name": "Halil","job": "Senior SDET"}
  When method POST
  Then status 201
  And print response

Scenario: Post Test2
  Given url 'https://reqres.in/api/users'
  And request {"name": "Halil","job": "Senior SDET"}
  When method POST
  Then status 201
  And match response == {"createdAt": "#ignore","name": "Halil","id": "#string","job": "Senior SDET"}
  And print response

