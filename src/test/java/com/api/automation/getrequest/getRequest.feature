Feature: To test the get endpoint of the application

  Background: Setup Base URL or Base path
    Given url 'https://jobportalkarate.herokuapp.com'
    And print '*********Base URL****************'

  Scenario: To get the all the data from the application
    #Given url 'https://jobportalkarate.herokuapp.com/normal/webapi/all'
    #Basepath:https://jobportalkarate.herokuapp.com  ,Contextpath:/normal/webapi/all'
    Given path '/normal/webapi/all'
    When method get # Send the request
    Then status 200 # the status code response should be 200

  Scenario: To get the all the data from the application using path Variable
    #Given url 'https://jobportalkarate.herokuapp.com'
    #Basepath:https://jobportalkarate.herokuapp.com  ,Contextpath:/normal/webapi/all'
    And path '/normal/webapi/all'
    When method get # Send the request
    Then status 200 # the status code response should be 200

  Scenario: To get the all the data from the application by json
    #Given url 'https://jobportalkarate.herokuapp.com'
    #Basepath:https://jobportalkarate.herokuapp.com  ,Contextpath:/normal/webapi/all'
    And path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get # Send the request
    Then status 200 # the status code response should be 200

  Scenario: To get the all the data from the application by XML
    #Given url 'https://jobportalkarate.herokuapp.com'
    #Basepath:https://jobportalkarate.herokuapp.com  ,Contextpath:/normal/webapi/all'
    And path '/normal/webapi/all'
    And header Accept = 'application/xml'
    When method get # Send the request
    Then status 200 # the status code response should be 200
