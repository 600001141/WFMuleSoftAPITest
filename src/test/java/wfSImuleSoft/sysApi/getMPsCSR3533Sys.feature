Feature: Getting mule-eis-sys-api to get multiple MP for ticket CSR-3533

 
 Background: 
  * url baseUrl
  * header Content-Type = 'application/json'    
  * header Accept = 'application/json'
  * def getUrl = baseUrl+'api/eis/sys/v1/master-policies/active'
  
  # URL 'https://mule-wft.qa.medpro.com/api/eis/sys/v1/master-policies/active?customerNumber=510005'
  
  @reg
  Scenario Outline: Verify mule-eis-sys-api to get multiple MP for ticket CSR-3533
  
 * karate.configure('ssl',true)
    
Given url getUrl
And param customerNumber = 510005
And request {}
When method get
Then status 200
And print response
    
    
* print '=========Validating field values in response================= :'
        

* match response.content[0].policyNumber == <policyNumber>
* match response.content[0].customerNumber == <customerNumber>
* match response.content[0].policyStatusCd == <policyStatusCd>


    Examples: 
      | read('file:src\\test\\java\\wfSImuleSoft\\wfSImuleSoft.testData\\SysApiData\\data_getMPsCSR3533Sys.csv') |
      
      
