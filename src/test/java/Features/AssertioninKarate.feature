Feature: Hello Assertion


  Scenario: matching example
    * def name = 'Steven King'
    * match name == 'Steven King'
   # similar to Assert.assertEquals(name,"Steven King");
    * match name != "David Ray"


  @Wip
  Scenario: more matching example
    * def employee =
    """
    {
    "first_name":"TA",
    "last_name":"Smith",
    "active":true
    "salary": 5000
    }
    """
    * def emp_name = employee.first_name
    * match emp_name == "TA"


  Scenario: fuzzy matching
    * def employee =
    """
    {
    "firstName":"Murat",
    "salary":5000,
    "age":30,
    "active": true

    }
    """
    * match employee.firstName == "#string"
    * match employee.salary == "#number"
    * match employee.age == "#number"
    * match employee.active == "#boolean"
    * match employee.lastName == "#notpresent"




