Feature: Getting mule-eis-sys-api to get MP for ticket CSR-3533

 
 Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  * def getUrl = baseUrl+'api/eis/sys/v1/master-policies/MP0001002000'
  
  # URL 'https://mule-wft.qa.medpro.com/api/eis/sys/v1/master-policies/MP0001002000'
  
  @reg
  Scenario Outline: Verify mule-eis-sys-api to get MP for ticket CSR-3533
  
 * karate.configure('ssl',true)
    
Given url getUrl
And request {}
When method get
Then status 200
And print response
    
    
* print '=========Validating field values in response================= :'
        

* match response.content[0].policyNumber == <policyNumber>
* match response.content[0].customerNumber == <customerNumber>
* match response.content[0].policyStatusCd == <policyStatusCd>


    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getMPCSR3533Sys.csv') |
      
      
