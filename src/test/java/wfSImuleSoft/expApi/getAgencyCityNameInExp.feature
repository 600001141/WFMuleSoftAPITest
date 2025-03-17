Feature: Getting mule-agency-exp Agency City name for ticket CSR-3519


Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  * def getUrl = baseUrl+'api/agency/v1/agencies'

  Scenario Outline: To verify the agency City name in EXP environment for ticket CSR-3519
    * karate.configure('ssl',true)
    Given url getUrl
    And param city = <City_name>
    When method get
    Then status 200

    * def length1 = karate.jsonPath(response, "$.content.[*].id")
    And print length1
    * def count = length1.length
    * match count == 3


    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\ExpApiData\\data_getAgencyCityNameExp.csv') |
