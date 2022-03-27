Feature: To validate the GET End point
To validate the get endpoint response

 Background: Setup Base URL or Base path
    Given url 'https://jobportalkarate.herokuapp.com'
    And print '*********Base URL****************'
    
  Scenario: To get the all the data from the application by json format
    And path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get # Send the request
    Then status 200 # the status code response should be 200
    And print response
    And match response ==
    """
    [
  {
    "jobId": 1,
    "jobTitle": "Software Engg",
    "jobDescription": "To develop andriod application",
    "experience": [
      "Google",
      "Apple",
      "Mobile Iron"
    ],
    "project": [
      {
        "projectName": "Movie App",
        "technology": [
          "Kotlin",
          "SQL Lite",
          "Gradle"
        ]
      }
    ]
  }
]"""
   
   
   Scenario: To get the all the data from the application by xml format
    And path '/normal/webapi/all'
    And header Accept = 'application/xml'
    When method get # Send the request
    Then status 200 # the status code response should be 200
    And print response
    And match response ==
    """
    <List>
  <item>
    <jobId>1</jobId>
    <jobTitle>Software Engg</jobTitle>
    <jobDescription>To develop andriod application</jobDescription>
    <experience>
      <experience>Google</experience>
      <experience>Apple</experience>
      <experience>Mobile Iron</experience>
    </experience>
    <project>
      <project>
        <projectName>Movie App</projectName>
        <technology>
          <technology>Kotlin</technology>
          <technology>SQL Lite</technology>
          <technology>Gradle</technology>
        </technology>
      </project>
    </project>
  </item>
</List> """


#using deep key word to mactch nested json object 
Scenario: To get the all the data from the application by json format with deep keyword
    And path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get # Send the request
    Then status 200 # the status code response should be 200
    And print response
    And match response contains deep {"jobDescription": "To develop andriod application"}
    And match response contains deep {"project": [{"projectName": "Movie App"}]}
    And match header Content-Type == "application/json"
    And match header Connection == "keep-alive"
    

