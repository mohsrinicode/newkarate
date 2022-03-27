Feature: To Create job entry in application

 Background: Setup Base URL or Base path
    Given url 'https://jobportalkarate.herokuapp.com'
    And print '*********Base URL****************'
    
 
   Scenario: To Create the job entry in Json format
    And path '/normal/webapi/add'
    And request { "jobId": 001 ,"jobTitle": "Software Engg001","jobDescription": "To develop andriod application","experience": ["Google","Apple","Mobile Iron"],"project": [{"projectName": "Movie App","technology": ["Kotlin","SQL Lite","Gradle"]}]}
    And headers {Accept :'application/json' , Content-Type: 'application/json'}
    When method post# Send the post 
    Then status 201
    And match response.jobTitle == "Software Engg001"
    And print response
    
    #Scenario: To Create the job entry in Json format
   # And path '/normal/webapi/add'
    #And request  <item><jobId>2221</jobId><jobTitle>Software Engg2221</jobTitle><jobDescription>To develop andriod application</jobDescription><experience>experience>Google</experience><experience>Apple</experience><experience>Mobile Iron</experience></experience><project><project><projectName>Movie App</projectName><technology><technology>Kotlin</technology><technology>SQL Lite</technology> <technology>Gradle</technology></technology></project></project></item>
    #And headers {Accept :'application/xml' , Content-Type: 'application/xml'}
    #When method post# Send the post 
    #Then status 201
    #And match response.jobTitle == "Software Engg2221"
    #And print response
    
     Scenario: To Create the job entry in Json format
    And path '/normal/webapi/add'
    * def body = read("postOperation.json")
    And request body
    And headers {Accept :'application/json' , Content-Type: 'application/json'}
    When method post# Send the post 
    Then status 201
    And match response.jobTitle == "Software Engg50"
    And print response
    