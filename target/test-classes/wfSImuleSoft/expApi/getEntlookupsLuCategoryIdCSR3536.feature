Feature: Getting mule-entlookups-exp-api Lu Category id for ticket CSR-3536


Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  * def getUrl = baseUrl+'api/lookups/v1/ent/categories'

Scenario Outline: To verify the endlookups for LuCategory id in Exp environment for ticket CSR-3536

* karate.configure('ssl',true)

Given url getUrl
And param id = <id>
When method get
Then status 200
And print response

	  * def length1 = karate.jsonPath(response, "$.content.[*].Id")
      And print length1
    * def count = length1.length
    * match count == 1


 
Examples: 
  | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\ExpApiData\\data_getEntlookupsLuCategoryIdCSR3536.csv') |
      
      
      
      