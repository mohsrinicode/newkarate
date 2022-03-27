Feature: To test update/Put of job entry in the application

  Background: Setup Base URL or Base path
    Given url 'https://jobportalkarate.herokuapp.com'
    And print '*********Base URL****************'

@Smoke @Regression
  Scenario: To update the job entry for exsisting job in json format
    # create a new Job entry
    #update the job entry using put reqest
    # using jsonPath verify the updation of detail in job entry
    Given path '/normal/webapi/add'
    * def getRandomvalue = function() { return Math.floor((100) * Math.random());}
    * def id = getRandomvalue()
    And request { "jobId": '#(id)',"jobTitle": "Software Engg001","jobDescription": "To develop andriod application","experience": ["Google","Apple","Mobile Iron"],"project": [{"projectName": "Movie App","technology": ["Kotlin","SQL Lite","Gradle"]}]}
    And headers {Accept :'application/json' , Content-Type: 'application/json'}
    When method post# Send the post
    Then status 201
    #Put request
    Given path '/normal/webapi/update'
    And request
      """
      {
       "jobId": '#(id)',
       "jobTitle": "Software Engg",
       "jobDescription": "To develop andriod application and Web Application",
       "experience": [
         "Google",
         "Apple",
         "Mobile Iron",
         "Google_@"
       ],
       "project": [
         {
           "projectName": "Movie App",
           "technology": [
             "Kotlin",
             "SQL Lite",
             "Gradle"
           ]
         },
         {
           "projectName": "Movie App and Web Application",
           "technology": [
             "Kotlin",
             "SQL Lite",
             "Gradle"
           ]
         }
       ]
      }
      """
    And headers {Accept :'application/json' , Content-Type: 'application/json'}
    When method put# Send the put
    Then status 200
    * def ProjectArray = karate.jsonPath(response, "$[?(@.jobId == " + id + ")].project")
    And print ProjectArray

  # And match ProjectArray[0] == '#[2]'
  Scenario: To update the job entry for exsisting job in json format by calling another feature file
    #<Gherkin keyword> <call> <read ( <location of file>)>
    Given call read("createJobEntry.feature")
    #Put request
    Given path '/normal/webapi/update'
    And request
      """
      {
       "jobId": '127',
       "jobTitle": "Software Engg",
       "jobDescription": "To develop andriod application and Web Application",
       "experience": [
         "Google",
         "Apple",
         "Mobile Iron",
         "Google_@"
       ],
       "project": [
         {
           "projectName": "Movie App",
           "technology": [
             "Kotlin",
             "SQL Lite",
             "Gradle"
           ]
         },
         {
           "projectName": "Movie App and Web Application",
           "technology": [
             "Kotlin",
             "SQL Lite",
             "Gradle"
           ]
         }
       ]
      }
      """
    And headers {Accept :'application/json' , Content-Type: 'application/json'}
    When method put # Send the put
    Then status 200
    * def ProjectArray = karate.jsonPath(response, "$[?(@.jobId == 127)].project")
    And print ProjectArray

  # And match ProjectArray[0] == '#[2]'
  Scenario: To update the job entry for exsisting job in json format by calling another feature file using shared context
    #<Gherkin keyword> <call> <read ( <location of file>)>
    #Given call read("createJobEntry.feature")
    * def postRequest = call read("createJobEntry.feature")
    * def id = postRequest.id
    And print "calling Feature == >", postRequest.id
    And print "calling Feature == >", postRequest.getRandomvalue()
    #Put request
    Given path '/normal/webapi/update'
    And request
      """
      {
       "jobId": '#(id)',
       "jobTitle": "Software Engg",
       "jobDescription": "To develop andriod application and Web Application",
       "experience": [
         "Google",
         "Apple",
         "Mobile Iron",
         "Google_@"
       ],
       "project": [
         {
           "projectName": "Movie App",
           "technology": [
             "Kotlin",
             "SQL Lite",
             "Gradle"
           ]
         },
         {
           "projectName": "Movie App and Web Application",
           "technology": [
             "Kotlin",
             "SQL Lite",
             "Gradle"
           ]
         }
       ]
      }
      """
    And headers {Accept :'application/json' , Content-Type: 'application/json'}
    When method put # Send the put
    Then status 200
    * def ProjectArray = karate.jsonPath(response, "$[?(@.jobId ==" +id+")].project")
    And print ProjectArray

  # And match ProjectArray[0] == '#[2]'
  Scenario: To update the job entry for exsisting job in json format by calling another feature file using variable passing
    #<Gherkin keyword> <call> <read ( <location of file>)>
    #Given call read("createJobEntry.feature") {var1:value , var2:value}
    * def getRandomvalue = function() { return Math.floor((100) * Math.random());}
    * def id = getRandomvalue()
    * def postRequest = call read("createJobEntrywithVariable.feature") {_url:'https://jobportalkarate.herokuapp.com',_path:'/normal/webapi/add',_id:'#(id)'}
    #Put request
    Given path '/normal/webapi/update'
    And request
      """
      {
       "jobId": '#(id)',
       "jobTitle": "Software Engg",
       "jobDescription": "To develop andriod application and Web Application",
       "experience": [
         "Google",
         "Apple",
         "Mobile Iron",
         "Google_@"
       ],
       "project": [
         {
           "projectName": "Movie App",
           "technology": [
             "Kotlin",
             "SQL Lite",
             "Gradle"
           ]
         },
         {
           "projectName": "Movie App and Web Application",
           "technology": [
             "Kotlin",
             "SQL Lite",
             "Gradle"
           ]
         }
       ]
      }
      """
    And headers {Accept :'application/json' , Content-Type: 'application/json'}
    When method put # Send the put
    Then status 200
    * def ProjectArray = karate.jsonPath(response, "$[?(@.jobId ==" +id+")].project")
    And print ProjectArray
