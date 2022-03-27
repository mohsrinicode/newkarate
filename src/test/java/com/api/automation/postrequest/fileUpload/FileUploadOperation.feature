Feature: File upload operation


 Background: Setup Base URL or Base path
    Given url 'https://jobportalkarate.herokuapp.com'
    And print '*********Base URL****************'
    
    
  Scenario: To upload the file in the application
  Given path '/normal/webapi/upload'
  # location of file , name of the file , Content-Type header value 
  And multipart file file = {read:'fileupload.txt', filename:'fileupload.txt', Content-type:'multipart/form-data' }
  When method post
  Then status 200
  And print response
  
  #Scenario: To upload the file in the application
  #Given path '/normal/webapi/upload'
  # location of file , name of the file , Content-Type header value 
  #And multipart file file = {read:'JsonResponse.json', filename:'JsonResponse.json', Content-type:'multipart/form-data' }
  #When method post
  #Then status 200
  #And print response
  #And match response.message contains 'JsonResponse1.json'
  