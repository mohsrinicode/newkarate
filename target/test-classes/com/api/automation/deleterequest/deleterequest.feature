Feature: To delete the request from the server
  Delete normal/webapi/remove/{id}

  Background: Setup Base URL or Base path
    Given url 'https://jobportalkarate.herokuapp.com'

  Scenario: Delete reuest from the resources from the server
    * def getRandomvalue = function() { return Math.floor((100) * Math.random());}
    * def ids = getRandomvalue()
    * def creatjob = call read("createJobEntrywithVariable.feature") {_url:'https://jobportalkarate.herokuapp.com',_path:'/normal/webapi/add',_id:'#(ids)' }
    Given path 'normal/webapi/remove/'+ ids
    And headers {Accept:'application/json'}
    When method delete
    Then status 200
    Given path '/normal/webapi/find'
    And param id = ids
    And param jobTitle = 'Software Engg001'
    And headers {Accept:'application/json'}
    When method get
    Then status 404
    
    
