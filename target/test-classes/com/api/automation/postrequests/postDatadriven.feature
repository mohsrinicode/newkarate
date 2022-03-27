Feature: Data driven Operation

  Background: Setup Base URL or Base path
    * def testdata = read("testdata.csv")
    Given url 'https://jobportalkarate.herokuapp.com'
    And print '*********Base URL****************'

 # Scenario Outline: Data driven post operation with Examples
  #  Given path '/normal/webapi/add'
   # And request { "jobId": '#(jobId)' ,"jobTitle": '#(jobTitle)',"jobDescription": '#jobDescription',"experience": ["Google","Apple","Mobile Iron"],"project": [{"projectName": "Movie App","technology": ["Kotlin","SQL Lite","Gradle"]}]}
   # And headers {Accept :'application/json' , Content-Type: 'application/json'}
   # When method post# Send the post
   # Then status <status>

    #Examples: 
     # | jobId | jobTitle | jobDescription | status |
     # |    12 | SE_1     | DEveloper      |    201 |
     # |    13 | SE_2     | Tester         |    400 |
     # |    14 | SE_3     | Auto           |    400 |

  Scenario Outline: Data driven post operation using CSV files
    Given path '/normal/webapi/add'
    And request { "jobId": '#(jobId)' ,"jobTitle": '#(jobTitle)',"jobDescription": '#jobDescription',"experience": ["Google","Apple","Mobile Iron"],"project": [{"projectName": "Movie App","technology": ["Kotlin","SQL Lite","Gradle"]}]}
    And headers {Accept :'application/json' , Content-Type: 'application/json'}
    When method post# Send the post
    And status <status>

   Examples: 
   | testdata |
