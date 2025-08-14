Feature: Getting mule-entlookups-exp-api to get one LuItem for ticket CSR-3536

 
Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  
 @reg
Scenario Outline: To verify the endlookups to get one LuItem in Exp environment for ticket CSR-3536

* karate.configure('ssl',true)

Given path 'api/lookups/v1/ent/categories/<item>'
When method get
Then status 200
And print response

	  * def length1 = karate.jsonPath(response, "$.content.[*].Id")
      And print length1
    * def count = length1.length
    * match count == 1

* print '=========Validating field values in response================= :'

* match response.content[0].Id == <id>
* match response.content[0].CategoryID == <cid>
* match response.content[0].CategoryShortName == <cname>
* match response.content[0].Code == <code>
* match response.content[0].LUValue == <luvalue>
 
Examples: 
  | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\ExpApiData\\data_getEntlookupsOneLuItemCSR3536.csv') |
      
      
      
      