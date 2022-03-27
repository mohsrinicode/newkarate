Feature: To create the job entry in the application
  Helper file for Post /normal/webapi/add

  Scenario: To create the Job entry with json data
    Given url _url
    And print '*********Base URL****************'
    And path _path
    And print "Helper --->", _url
    And print "Helper --->", _path
    And print "Helper --->", _id
    And request { "jobId": '#(_id)',"jobTitle": "Software Engg001","jobDescription": "To develop andriod application","experience": ["Google","Apple","Mobile Iron"],"project": [{"projectName": "Movie App","technology": ["Kotlin","SQL Lite","Gradle"]}]}
    And headers {Accept :'application/json' , Content-Type: 'application/json'}
    When method post# Send the post
    Then status 201
