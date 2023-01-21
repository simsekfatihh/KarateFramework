Feature:Login Test


  Scenario:Login with valid login credentials with seuce Demo
    Given driver 'https://www.saucedemo.com/'
    * maximize()
    And input("//*[@id='user-name']","standard_user")
    And input("//*[@id='password']","secret_sauce")
    When click("//*[@id='login-button']")
    Then match driver.title == 'Swag Labs'
    And retry(5, 15000).waitForUrl("https://www.saucedemo.com")
    Then match driver.title =https://www.saucedemo.com/inventory.html'
    And delay(2000)


    Scenario: search at google
    Given driver 'https://google.com'
    * maximize()
    And input("input[name=q]", 'karate dsl')
    When submit().click("input[name=btnI]")
    Then retry(5, 15000).waitForUrl('https://github.com/karatelabs/karate')



