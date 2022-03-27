Feature: To validate the GET End point
To validate the get endpoint response

Background: Setup Base URL or Base path
    Given url 'https://jobportalkarate.herokuapp.com'
    And print '*********Base URL****************'
    
  Scenario: To get the all the data from the application by json and json validator
    And path '/normal/webapi/all'
    And header Accept = 'application/xml'
    When method get # Send the request
    Then status 200 # the status code response should be 200
    And print response
    And match response/List/item/jobId == '1'
    And match response/List/item/experience/experience[1] == 'Google'
    And match response/List/item/project/project/projectName == 'Movie App'
    And match response/List/item/project/project/technology/technology[2] == 'SQL Lite'
    #Skip the response keyword
    And match /List/item/experience/experience[1] == 'Google'
    #Tavers the xml similar to json
    And match response.List.item.experience.experience[0] == 'Google'