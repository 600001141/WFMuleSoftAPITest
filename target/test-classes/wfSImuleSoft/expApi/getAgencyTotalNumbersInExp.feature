Feature: Getting mule-agency-exp toatl listed Agency for ticket CSR-3519


Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  # * def getUrl = baseUrl+'api/lookups/v1/eis/categories/ACAmbulanceTransportation/items/100'
  

Scenario Outline: To verify the total listed agency details in EXP environment for ticket CSR-3519
* karate.configure('ssl',true)

Given url 'https://mule-wft.qa.medpro.com/api/agency/v1/<Agency_count>'
When method get
Then status 200

    * def length1 = karate.jsonPath(response, "$.content.[*].id")
    And print length1
    * def count = length1.length
    * match count == 10



Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\ExpApiData\\data_getAgencyTotalNumbersExp.csv') |