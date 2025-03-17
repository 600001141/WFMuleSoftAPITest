Feature: Automate API with Query Parameters
 
  Background:
    * url baseUrl
    # * path 'api/fileprocesses/prc/v1/fileprocess'
    * header Content-Type = 'application/json'    
    * header Accept = 'application/json'
     
  Scenario: Get File Processes with Query Params
  * karate.configure('ssl',true)
  # * configure printEnabled = true
 # * def queryParams = { page: 1, pagesize: 10, appshortname: 'MULE_PAYCLAIM_PROCESS_API' }
    Given path 'api/fileprocesses/prc/v1/fileprocess'
    And param page = 1
    And param pagesize = 10
    And param appshortname = 'MULE_PAYCLAIM_PROCESS_API'
    
    When method GET
    Then status 200
    And print response