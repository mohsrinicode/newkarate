Feature: To test the patch operation and update the job description

  Background: Setup Base URL or Base path
    Given url 'https://jobportalkarate.herokuapp.com'

  Scenario: To update job description using patch request
    * def getRandomvalue = function() { return Math.floor((100) * Math.random());}
    * def ids = getRandomvalue()
    * def jobdesc = 'To recently update by patch request'
    * def creatjob = call read("createJobEntrywithVariable.feature") {_url:'https://jobportalkarate.herokuapp.com',_path:'/normal/webapi/add',_id:'#(ids)' }
    Given path '/normal/webapi/update/details'
    And param id = ids
    And params {id:'#(ids)',jobTitle:'Software Engg001',jobDescription:'#(jobdesc)'}
    And headers {Accept:'application/json'}
    When method patch
    Then status 200
    And match response.jobDescription == jobdesc
    
