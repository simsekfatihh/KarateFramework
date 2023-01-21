Feature:Hello Karate

  Scenario: How to print
    Given print "Hello World"
    When print 'Hello student'
    Then print "I hope you will get a job soon"


  Scenario:  Keep going printing
    Given print 'some sentence to print'
    * print "May name is Json Smith"
    * print 2+2
    * print "May name is","James Bond"
    * print "May name is" + "Adem"


  Scenario: variables
    * def name = "James"
    * print 'my name is',name
    * def age = 48
    * print name,"is",age,"years old"


  Scenario: difficult parameter: Json object
    * def student = {'name':"John","owes_tuition": false}
    * print student
    * print student.name
    * print student.owes_tuition



  Scenario: some json object
      * def student =
      """
      {
      "first_name":"James",
      "last_name":"Bond",
      "salary": 2023
      }
      """
     * print student.first_name
     * print student.last_name
     * print student.salary


