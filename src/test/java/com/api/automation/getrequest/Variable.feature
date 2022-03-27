Feature: variable creation in karate Framework

Background: create and initialized
 * def my_website = "Google"
 * def Page_load_timeout = 25

  #Two ways to create the variables
  #<Gherkin keyword> <def> <variable_name> = <Value>
  # * <def> <variable_name> =  <Value>
  Scenario: To create a variable
    # Use variable for repeating value
    #Storing the data from external file
    # In the matcher expression
    # Passing the data from one feature file to another
    Given def var_int = 10
    And def var_String = "Katate"
    * def var_int_2 = var_int + 10
    Then print "Integer variable====>", var_int
    And print "String variable====>", var_String
    And print "New variable value------>" , var_int_2
     And print "back ground variable value------>" , my_website , Page_load_timeout
      

  Scenario: Access to variable
  * def var_int = 20
  * def var_String = "framework"
  * def var_int_2 = "35"
    Given print "Print previous Scenario variable ==> ", var_int
    And print "Print previous Scenario variable ==>", var_String
    And print "Print previous Scenario variable ==>", var_int_2
    And print "back ground variable value------>" , my_website , Page_load_timeout
