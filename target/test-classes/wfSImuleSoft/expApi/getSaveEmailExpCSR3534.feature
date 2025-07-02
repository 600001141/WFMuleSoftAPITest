Feature: Getting mule-email-exp-api email page for ticket CSR-3534


 
Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  
 @reg
Scenario Outline: To verify the email page in Exp environment for ticket CSR-3534

* karate.configure('ssl',true)
Given path 'api/emails/v1/email/<id>'
When method get
Then status 200
And print response

	  * def length1 = karate.jsonPath(response, "$.content.[*].id")
      And print length1
    * def count = length1.length
    * match count == 1


* print '=========Validating field values in response================= :'
    
    * match response.content.[*].eMailAddressTo[*].displayName contains <name>
    * match response.content.[*].eMailAddressTo[*].eMailAddressString contains <email>

 
Examples: 
  | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\ExpApiData\\data_getSaveEmailExpCSR3534.csv') |
      
      
      