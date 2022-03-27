Feature: To validate the GET End response from External File 
To validate the get endpoint response

 Background: Setup Base URL or Base path
    Given url 'https://jobportalkarate.herokuapp.com'
    And print '*********Base URL****************'
    
  Scenario: To get the all the data from the application by json format
    And path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get # Send the request
    Then status 200 # the status code response should be 200
   # create a variable and store the data from External File
  * def actualresponse = read("JsonResponse.json")
   And match response == actualresponse
 #And print "File ====" , actualresponse
 #And print "File ====" , response
 
 
 Scenario: To get the all the data from the application by XML
 
    And path '/normal/webapi/all'
    And header Accept = 'application/xml'
    When method get # Send the request
    Then status 200 # the status code response should be 200
    # create a variable and store the data from External File
  * def actualresponse = read("payloadxml.xml")
   #And match response == actualresponse
 #And print "File ====" , actualresponse
 And print "File xml server  ====" , response
 
 