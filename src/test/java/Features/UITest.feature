Feature: Karate browser automation


  Scenario: Try to login to sauce demo

    Given driver 'https://www.saucedemo.com/'
    * maximize()
    And input("//*[@id='user-name']","standard_user")
    And input("//*[@id='password']","secret_sauce")
    When click("//*[@id='login-button']")
    And retry(5, 15000).waitForUrl("https://www.saucedemo.com")
    Then match driver.url == "https://www.saucedemo.com/inventory.html"


