Feature: Getting mule-entlookups-exp-api to get LuItems for ticket CSR-3536


 
Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  
 @reg
Scenario Outline: To verify the endlookups to get LuItems in Exp environment for ticket CSR-3536

* karate.configure('ssl',true)

Given path 'api/lookups/v1/ent/categories/<item>'
When method get
Then status 200
And print response

	  * def length1 = karate.jsonPath(response, "$.content.[*].Id")
      And print length1
    * def count = length1.length
    * match count == 8

 * print '=========Validating field values in response================= :'	
    * match response.content[0].Code == <code>
    * match response.content[0].LUValue == <luValue>
    * match response.content[0].DateAdded == <dateA>
    * match response.content[0].DateMod == <dateM>
 
 
Examples: 
  | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\ExpApiData\\data_getEntlookupsLuItemsCSR3536.csv') |
      
      
      
      