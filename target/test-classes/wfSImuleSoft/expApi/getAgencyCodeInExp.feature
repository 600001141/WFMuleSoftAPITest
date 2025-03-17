Feature: Getting mule-agency-exp Agency code for ticket CSR-3519


Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  * def getUrl = baseUrl+'api/agency/v1/agencies'
  

  Scenario Outline: To verify the agency code in EXP environment for ticket CSR-3519
    * karate.configure('ssl',true)
    Given url getUrl
    And param code = <Agencies_code>
    When method get
    Then status 200
    
    * def length1 = karate.jsonPath(response, "$.content.[*].id")
    And print length1
    * def count = length1.length
    * match count == 1

    
    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\ExpApiData\\data_getAgencyCodeExp.csv') |
