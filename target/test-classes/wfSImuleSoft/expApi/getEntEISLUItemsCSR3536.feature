Feature: Getting mule-entlookups-exp-api to get EIS LU Items for ticket CSR-3536


Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  # * def getUrl = baseUrl+'api/lookups/v1/eis/categories/ACAmbulanceTransportation/items'

Scenario Outline: To verify the endlookups to get EIS LU Items in Exp environment for ticket CSR-3536

* karate.configure('ssl',true)

Given path 'api/lookups/v1/eis/categories/<items>'
When method get
Then status 200
And print response

	  * def length1 = karate.jsonPath(response, "$.content.[*].CategoryShortName")
      And print length1
    * def count = length1.length
    * match count == 8

 
Examples: 
  | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\ExpApiData\\data_getEntEISLUItemsCSR3536.csv') |
      
      
      
      