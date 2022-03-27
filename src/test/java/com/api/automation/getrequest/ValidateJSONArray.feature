Feature: To validate the GET End point
To validate the get endpoint response

 Background: Setup Base URL or Base path
    Given url 'https://jobportalkarate.herokuapp.com'
    And print '*********Base URL****************'
    
  Scenario: To get the all the data from the application by json and json validator
    And path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get # Send the request
    Then status 200 # the status code response should be 200
    And match response.[0].jobId == 1
    And match response.[0].experience[1] =='Apple'
    And match response.[0].project[0].projectName == 'Movie App'
    And match response.[0].project[0].technology[2] == 'Gradle'
    #validate the size of the array 
    And match response.[0].experience =='#[3]'
    
    
    #using wild card character 
    Scenario: To get the all the data from the application by json wild card
    And path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get # Send the request
    Then status 200 # the status code response should be 200
    And match response.[0].jobId == 1
    # using wild card char
    And match response.[0].experience[*] == ['Google','Apple','Mobile Iron']
    And match response.[0].project[0].technology[*] == ['Kotlin','SQL Lite','Gradle']
    #using contains 
    And match response.[0].experience[*] contains ['Google','Apple','Mobile Iron']
    And match response.[0].project[0].technology[*] contains  ['SQL Lite','Gradle']
    
    
   
    